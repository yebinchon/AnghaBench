
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int transparent; } ;



__attribute__((used)) static void quirk_transparent_bridge(struct pci_dev *dev)
{
 dev->transparent = 1;
}
