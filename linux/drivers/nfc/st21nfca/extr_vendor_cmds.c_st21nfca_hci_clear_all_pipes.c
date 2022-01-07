
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_hci_dev {int dummy; } ;
struct nfc_dev {int dummy; } ;


 struct nfc_hci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int nfc_hci_disconnect_all_gates (struct nfc_hci_dev*) ;

__attribute__((used)) static int st21nfca_hci_clear_all_pipes(struct nfc_dev *dev, void *data,
          size_t data_len)
{
 struct nfc_hci_dev *hdev = nfc_get_drvdata(dev);

 return nfc_hci_disconnect_all_gates(hdev);
}
