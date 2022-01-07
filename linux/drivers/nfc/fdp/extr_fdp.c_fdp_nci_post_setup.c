
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nci_dev {int dummy; } ;
struct fdp_nci_info {int clock_freq; int clock_type; scalar_t__* fw_vsc_cfg; TYPE_1__* phy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {TYPE_2__* i2c_dev; } ;


 int fdp_nci_set_clock (struct nci_dev*,int ,int ) ;
 int fdp_nci_set_production_data (struct nci_dev*,scalar_t__,scalar_t__*) ;
 int nci_core_init (struct nci_dev*) ;
 int nci_core_reset (struct nci_dev*) ;
 struct fdp_nci_info* nci_get_drvdata (struct nci_dev*) ;
 int nfc_err (struct device*,char*,int) ;

__attribute__((used)) static int fdp_nci_post_setup(struct nci_dev *ndev)
{
 struct fdp_nci_info *info = nci_get_drvdata(ndev);
 struct device *dev = &info->phy->i2c_dev->dev;
 int r;


 if (info->fw_vsc_cfg && info->fw_vsc_cfg[0]) {


  r = fdp_nci_set_production_data(ndev, info->fw_vsc_cfg[3],
      &info->fw_vsc_cfg[4]);
  if (r) {
   nfc_err(dev, "Vendor specific config set error %d\n",
    r);
   return r;
  }
 }


 r = fdp_nci_set_clock(ndev, info->clock_type, info->clock_freq);
 if (r) {
  nfc_err(dev, "Clock set error %d\n", r);
  return r;
 }




 r = nci_core_reset(ndev);
 if (r)
  return r;





 return nci_core_init(ndev);
}
