
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;


 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;

void sb800_prefetch(struct device *dev, int on)
{
 u16 misc;
 struct pci_dev *pdev = to_pci_dev(dev);

 pci_read_config_word(pdev, 0x50, &misc);
 if (on == 0)
  pci_write_config_word(pdev, 0x50, misc & 0xfcff);
 else
  pci_write_config_word(pdev, 0x50, misc | 0x0300);
}
