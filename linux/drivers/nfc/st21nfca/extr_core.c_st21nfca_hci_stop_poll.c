
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_hci_dev {int dummy; } ;


 int ST21NFCA_DEVICE_MGNT_GATE ;
 int ST21NFCA_DM_DISCONNECT ;
 int nfc_hci_send_cmd (struct nfc_hci_dev*,int ,int ,int *,int ,int *) ;

__attribute__((used)) static void st21nfca_hci_stop_poll(struct nfc_hci_dev *hdev)
{
 nfc_hci_send_cmd(hdev, ST21NFCA_DEVICE_MGNT_GATE,
   ST21NFCA_DM_DISCONNECT, ((void*)0), 0, ((void*)0));
}
