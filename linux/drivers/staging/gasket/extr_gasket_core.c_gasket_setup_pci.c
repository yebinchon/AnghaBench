
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct gasket_dev {int dummy; } ;


 int ENOMEM ;
 int GASKET_NUM_BARS ;
 int gasket_map_pci_bar (struct gasket_dev*,int) ;
 int gasket_unmap_pci_bar (struct gasket_dev*,int) ;

__attribute__((used)) static int gasket_setup_pci(struct pci_dev *pci_dev,
       struct gasket_dev *gasket_dev)
{
 int i, mapped_bars, ret;

 for (i = 0; i < GASKET_NUM_BARS; i++) {
  ret = gasket_map_pci_bar(gasket_dev, i);
  if (ret) {
   mapped_bars = i;
   goto fail;
  }
 }

 return 0;

fail:
 for (i = 0; i < mapped_bars; i++)
  gasket_unmap_pci_bar(gasket_dev, i);

 return -ENOMEM;
}
