
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
typedef int __le32 ;


 int EINVAL ;
 int le32_to_cpu (int ) ;
 int pci_user_write_config_byte (struct pci_dev*,int,int ) ;
 int pci_user_write_config_dword (struct pci_dev*,int,int ) ;
 int pci_user_write_config_word (struct pci_dev*,int,int ) ;

__attribute__((used)) static int vfio_user_config_write(struct pci_dev *pdev, int offset,
      __le32 val, int count)
{
 int ret = -EINVAL;
 u32 tmp_val = le32_to_cpu(val);

 switch (count) {
 case 1:
  ret = pci_user_write_config_byte(pdev, offset, tmp_val);
  break;
 case 2:
  ret = pci_user_write_config_word(pdev, offset, tmp_val);
  break;
 case 4:
  ret = pci_user_write_config_dword(pdev, offset, tmp_val);
  break;
 }

 return ret;
}
