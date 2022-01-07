
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int work; } ;
struct nxp_nci_info {scalar_t__ mode; int info_lock; int phy_id; TYPE_2__* phy_ops; TYPE_1__ fw_info; } ;
struct nci_dev {int dummy; } ;
struct TYPE_4__ {int (* set_mode ) (int ,int ) ;} ;


 int ESHUTDOWN ;
 int NXP_NCI_MODE_COLD ;
 scalar_t__ NXP_NCI_MODE_FW ;
 int cancel_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nci_free_device (struct nci_dev*) ;
 struct nxp_nci_info* nci_get_drvdata (struct nci_dev*) ;
 int nci_unregister_device (struct nci_dev*) ;
 int nxp_nci_fw_work_complete (struct nxp_nci_info*,int ) ;
 int stub1 (int ,int ) ;

void nxp_nci_remove(struct nci_dev *ndev)
{
 struct nxp_nci_info *info = nci_get_drvdata(ndev);

 if (info->mode == NXP_NCI_MODE_FW)
  nxp_nci_fw_work_complete(info, -ESHUTDOWN);
 cancel_work_sync(&info->fw_info.work);

 mutex_lock(&info->info_lock);

 if (info->phy_ops->set_mode)
  info->phy_ops->set_mode(info->phy_id, NXP_NCI_MODE_COLD);

 nci_unregister_device(ndev);
 nci_free_device(ndev);

 mutex_unlock(&info->info_lock);
}
