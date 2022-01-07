
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_hci_dev {int dummy; } ;
struct nfc_dev {int dummy; } ;


 int ST21NFCA_DEVICE_MGNT_GATE ;
 int ST21NFCA_HCI_DM_LOAD ;
 struct nfc_hci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int nfc_hci_send_cmd (struct nfc_hci_dev*,int ,int ,void*,size_t,int *) ;

__attribute__((used)) static int st21nfca_hci_dm_load(struct nfc_dev *dev, void *data,
    size_t data_len)
{
 struct nfc_hci_dev *hdev = nfc_get_drvdata(dev);

 return nfc_hci_send_cmd(hdev, ST21NFCA_DEVICE_MGNT_GATE,
    ST21NFCA_HCI_DM_LOAD, data, data_len, ((void*)0));
}
