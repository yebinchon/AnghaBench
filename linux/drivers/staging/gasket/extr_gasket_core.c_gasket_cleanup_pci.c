
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_dev {int dummy; } ;


 int GASKET_NUM_BARS ;
 int gasket_unmap_pci_bar (struct gasket_dev*,int) ;

__attribute__((used)) static void gasket_cleanup_pci(struct gasket_dev *gasket_dev)
{
 int i;

 for (i = 0; i < GASKET_NUM_BARS; i++)
  gasket_unmap_pci_bar(gasket_dev, i);
}
