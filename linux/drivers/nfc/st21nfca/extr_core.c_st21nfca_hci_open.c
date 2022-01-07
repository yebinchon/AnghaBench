
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st21nfca_hci_info {scalar_t__ state; int info_lock; int phy_id; TYPE_1__* phy_ops; } ;
struct nfc_hci_dev {int dummy; } ;
struct TYPE_2__ {int (* enable ) (int ) ;} ;


 int EBUSY ;
 scalar_t__ ST21NFCA_ST_COLD ;
 scalar_t__ ST21NFCA_ST_READY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int stub1 (int ) ;

__attribute__((used)) static int st21nfca_hci_open(struct nfc_hci_dev *hdev)
{
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);
 int r;

 mutex_lock(&info->info_lock);

 if (info->state != ST21NFCA_ST_COLD) {
  r = -EBUSY;
  goto out;
 }

 r = info->phy_ops->enable(info->phy_id);

 if (r == 0)
  info->state = ST21NFCA_ST_READY;

out:
 mutex_unlock(&info->info_lock);
 return r;
}
