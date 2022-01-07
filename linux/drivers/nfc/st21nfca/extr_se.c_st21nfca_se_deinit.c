
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bwi_active; int se_active; int se_active_timer; int bwi_timer; } ;
struct st21nfca_hci_info {TYPE_1__ se_info; } ;
struct nfc_hci_dev {int dummy; } ;


 int del_timer_sync (int *) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;

void st21nfca_se_deinit(struct nfc_hci_dev *hdev)
{
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);

 if (info->se_info.bwi_active)
  del_timer_sync(&info->se_info.bwi_timer);
 if (info->se_info.se_active)
  del_timer_sync(&info->se_info.se_active_timer);

 info->se_info.bwi_active = 0;
 info->se_info.se_active = 0;
}
