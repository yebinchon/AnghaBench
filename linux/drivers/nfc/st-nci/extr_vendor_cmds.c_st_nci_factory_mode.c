
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st_nci_info {int flags; } ;
struct nfc_dev {int dummy; } ;
struct nci_dev {int dummy; } ;


 int EINVAL ;
 int ST_NCI_FACTORY_MODE ;


 int clear_bit (int ,int *) ;
 struct st_nci_info* nci_get_drvdata (struct nci_dev*) ;
 struct nci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int pr_debug (char*,int) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int st_nci_factory_mode(struct nfc_dev *dev, void *data,
          size_t data_len)
{
 struct nci_dev *ndev = nfc_get_drvdata(dev);
 struct st_nci_info *info = nci_get_drvdata(ndev);

 if (data_len != 1)
  return -EINVAL;

 pr_debug("factory mode: %x\n", ((u8 *)data)[0]);

 switch (((u8 *)data)[0]) {
 case 128:
  test_and_set_bit(ST_NCI_FACTORY_MODE, &info->flags);
 break;
 case 129:
  clear_bit(ST_NCI_FACTORY_MODE, &info->flags);
 break;
 default:
  return -EINVAL;
 }

 return 0;
}
