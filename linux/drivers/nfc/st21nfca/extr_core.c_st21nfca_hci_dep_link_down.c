
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st21nfca_hci_info {int state; } ;
struct nfc_hci_dev {int dummy; } ;


 int ST21NFCA_DEVICE_MGNT_GATE ;
 int ST21NFCA_DM_DISCONNECT ;
 int ST21NFCA_ST_READY ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int nfc_hci_send_cmd (struct nfc_hci_dev*,int ,int ,int *,int ,int *) ;

__attribute__((used)) static int st21nfca_hci_dep_link_down(struct nfc_hci_dev *hdev)
{
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);

 info->state = ST21NFCA_ST_READY;

 return nfc_hci_send_cmd(hdev, ST21NFCA_DEVICE_MGNT_GATE,
    ST21NFCA_DM_DISCONNECT, ((void*)0), 0, ((void*)0));
}
