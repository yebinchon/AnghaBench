
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int is_hotplug_bridge; } ;



__attribute__((used)) static void quirk_hotplug_bridge(struct pci_dev *dev)
{
 dev->is_hotplug_bridge = 1;
}
