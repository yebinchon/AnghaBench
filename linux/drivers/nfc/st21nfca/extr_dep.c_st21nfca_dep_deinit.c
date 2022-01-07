
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_work; } ;
struct st21nfca_hci_info {TYPE_1__ dep_info; } ;
struct nfc_hci_dev {int dummy; } ;


 int cancel_work_sync (int *) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;

void st21nfca_dep_deinit(struct nfc_hci_dev *hdev)
{
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);

 cancel_work_sync(&info->dep_info.tx_work);
}
