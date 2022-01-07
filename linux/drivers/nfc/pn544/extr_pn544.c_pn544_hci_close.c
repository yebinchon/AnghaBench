
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pn544_hci_info {scalar_t__ state; int info_lock; int phy_id; TYPE_1__* phy_ops; } ;
struct nfc_hci_dev {int dummy; } ;
struct TYPE_2__ {int (* disable ) (int ) ;} ;


 scalar_t__ PN544_ST_COLD ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct pn544_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int stub1 (int ) ;

__attribute__((used)) static void pn544_hci_close(struct nfc_hci_dev *hdev)
{
 struct pn544_hci_info *info = nfc_hci_get_clientdata(hdev);

 mutex_lock(&info->info_lock);

 if (info->state == PN544_ST_COLD)
  goto out;

 info->phy_ops->disable(info->phy_id);

 info->state = PN544_ST_COLD;

out:
 mutex_unlock(&info->info_lock);
}
