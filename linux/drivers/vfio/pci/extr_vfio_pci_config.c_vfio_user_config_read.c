
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
typedef int __le32 ;


 int EINVAL ;
 int cpu_to_le32 (int ) ;
 int pci_user_read_config_byte (struct pci_dev*,int,int *) ;
 int pci_user_read_config_dword (struct pci_dev*,int,int *) ;
 int pci_user_read_config_word (struct pci_dev*,int,int *) ;

__attribute__((used)) static int vfio_user_config_read(struct pci_dev *pdev, int offset,
     __le32 *val, int count)
{
 int ret = -EINVAL;
 u32 tmp_val = 0;

 switch (count) {
 case 1:
 {
  u8 tmp;
  ret = pci_user_read_config_byte(pdev, offset, &tmp);
  tmp_val = tmp;
  break;
 }
 case 2:
 {
  u16 tmp;
  ret = pci_user_read_config_word(pdev, offset, &tmp);
  tmp_val = tmp;
  break;
 }
 case 4:
  ret = pci_user_read_config_dword(pdev, offset, &tmp_val);
  break;
 }

 *val = cpu_to_le32(tmp_val);

 return ret;
}
