
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ d3_delay; } ;



__attribute__((used)) static void quirk_remove_d3_delay(struct pci_dev *dev)
{
 dev->d3_delay = 0;
}
