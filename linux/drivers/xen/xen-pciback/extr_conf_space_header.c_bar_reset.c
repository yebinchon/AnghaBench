
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pci_bar_info {scalar_t__ which; } ;



__attribute__((used)) static void bar_reset(struct pci_dev *dev, int offset, void *data)
{
 struct pci_bar_info *bar = data;

 bar->which = 0;
}
