
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_dev {int dummy; } ;
struct nci_dev {int dummy; } ;


 int nci_hci_clear_all_pipes (struct nci_dev*) ;
 struct nci_dev* nfc_get_drvdata (struct nfc_dev*) ;

__attribute__((used)) static int st_nci_hci_clear_all_pipes(struct nfc_dev *dev, void *data,
          size_t data_len)
{
 struct nci_dev *ndev = nfc_get_drvdata(dev);

 return nci_hci_clear_all_pipes(ndev);
}
