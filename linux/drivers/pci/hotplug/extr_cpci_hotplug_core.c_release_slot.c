
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {int dev; } ;


 int kfree (struct slot*) ;
 int pci_dev_put (int ) ;

__attribute__((used)) static void release_slot(struct slot *slot)
{
 pci_dev_put(slot->dev);
 kfree(slot);
}
