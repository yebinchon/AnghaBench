
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int kfree (void*) ;

__attribute__((used)) static void bar_release(struct pci_dev *dev, int offset, void *data)
{
 kfree(data);
}
