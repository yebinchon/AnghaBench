
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int pcie_capability_read_word (struct pci_dev*,int,int *) ;
 int pcie_capability_write_word (struct pci_dev*,int,int ) ;

int pcie_capability_clear_and_set_word(struct pci_dev *dev, int pos,
           u16 clear, u16 set)
{
 int ret;
 u16 val;

 ret = pcie_capability_read_word(dev, pos, &val);
 if (!ret) {
  val &= ~clear;
  val |= set;
  ret = pcie_capability_write_word(dev, pos, val);
 }

 return ret;
}
