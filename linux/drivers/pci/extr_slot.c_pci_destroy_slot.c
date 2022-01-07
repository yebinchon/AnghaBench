
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kref; } ;
struct pci_slot {TYPE_2__ kobj; int number; TYPE_1__* bus; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*,int ,scalar_t__) ;
 int kobject_put (TYPE_2__*) ;
 scalar_t__ kref_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_slot_mutex ;

void pci_destroy_slot(struct pci_slot *slot)
{
 dev_dbg(&slot->bus->dev, "dev %02x, dec refcount to %d\n",
  slot->number, kref_read(&slot->kobj.kref) - 1);

 mutex_lock(&pci_slot_mutex);
 kobject_put(&slot->kobj);
 mutex_unlock(&pci_slot_mutex);
}
