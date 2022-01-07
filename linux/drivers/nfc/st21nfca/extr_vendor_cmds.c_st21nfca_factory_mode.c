
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_hci_dev {int quirks; } ;
struct nfc_dev {int dummy; } ;


 int EINVAL ;
 int ST21NFCA_FACTORY_MODE ;


 int clear_bit (int ,int *) ;
 struct nfc_hci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int pr_debug (char*,int) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int st21nfca_factory_mode(struct nfc_dev *dev, void *data,
          size_t data_len)
{
 struct nfc_hci_dev *hdev = nfc_get_drvdata(dev);

 if (data_len != 1)
  return -EINVAL;

 pr_debug("factory mode: %x\n", ((u8 *)data)[0]);

 switch (((u8 *)data)[0]) {
 case 128:
  test_and_set_bit(ST21NFCA_FACTORY_MODE, &hdev->quirks);
 break;
 case 129:
  clear_bit(ST21NFCA_FACTORY_MODE, &hdev->quirks);
 break;
 default:
  return -EINVAL;
 }

 return 0;
}
