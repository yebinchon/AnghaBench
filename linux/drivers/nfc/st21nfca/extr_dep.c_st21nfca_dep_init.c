
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int to; scalar_t__ idx; scalar_t__ curr_nfc_dep_pni; int tx_work; } ;
struct st21nfca_hci_info {TYPE_1__ dep_info; } ;
struct nfc_hci_dev {int dummy; } ;


 int INIT_WORK (int *,int ) ;
 int ST21NFCA_DEFAULT_TIMEOUT ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int st21nfca_tx_work ;

void st21nfca_dep_init(struct nfc_hci_dev *hdev)
{
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);

 INIT_WORK(&info->dep_info.tx_work, st21nfca_tx_work);
 info->dep_info.curr_nfc_dep_pni = 0;
 info->dep_info.idx = 0;
 info->dep_info.to = ST21NFCA_DEFAULT_TIMEOUT;
}
