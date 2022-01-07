
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nci_dev {int dummy; } ;
struct fdp_nci_info {scalar_t__ ram_version; scalar_t__ ram_patch_version; int setup_patch_sent; int setup_reset_ntf; int setup_patch_ntf; int setup_patch_status; int setup_wq; int ndev; TYPE_2__* phy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* i2c_dev; } ;
struct TYPE_3__ {struct device dev; } ;


 int EINVAL ;
 int FDP_FW_UPDATE_SLEEP ;
 int NCI_PATCH_TYPE_EOT ;
 int NCI_PATCH_TYPE_RAM ;
 int fdp_nci_create_conn (struct nci_dev*) ;
 int fdp_nci_patch_cmd (struct nci_dev*,int ) ;
 int fdp_nci_send_patch (struct nci_dev*,int,int ) ;
 int msleep (int ) ;
 int nci_core_conn_close (int ,int) ;
 struct fdp_nci_info* nci_get_drvdata (struct nci_dev*) ;
 int nfc_err (struct device*,char*,int) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int fdp_nci_patch_ram(struct nci_dev *ndev)
{
 struct fdp_nci_info *info = nci_get_drvdata(ndev);
 struct device *dev = &info->phy->i2c_dev->dev;
 int conn_id;
 int r = 0;

 if (info->ram_version >= info->ram_patch_version)
  goto out;

 info->setup_patch_sent = 0;
 info->setup_reset_ntf = 0;
 info->setup_patch_ntf = 0;


 r = fdp_nci_patch_cmd(ndev, NCI_PATCH_TYPE_RAM);
 if (r)
  goto out;


 conn_id = fdp_nci_create_conn(ndev);
 if (conn_id < 0) {
  r = conn_id;
  goto out;
 }


 r = fdp_nci_send_patch(ndev, conn_id, NCI_PATCH_TYPE_RAM);
 if (r)
  goto out;


 wait_event_interruptible(info->setup_wq,
     info->setup_patch_sent == 1);


 msleep(FDP_FW_UPDATE_SLEEP);


 r = nci_core_conn_close(info->ndev, conn_id);
 if (r)
  goto out;


 if (fdp_nci_patch_cmd(ndev, NCI_PATCH_TYPE_EOT)) {
  nfc_err(dev, "RAM patch error 0x%x\n", r);
  r = -EINVAL;
  goto out;
 }


 wait_event_interruptible(info->setup_wq, info->setup_patch_ntf);


 r = info->setup_patch_status;
 if (r) {
  nfc_err(dev, "RAM patch error 0x%x\n", r);
  r = -EINVAL;
  goto out;
 }





 wait_event_interruptible(info->setup_wq, info->setup_reset_ntf);

out:
 return r;
}
