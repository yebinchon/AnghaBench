
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {struct slot* name; int dn; } ;


 int kfree (struct slot*) ;
 int of_node_put (int ) ;

void dealloc_slot_struct(struct slot *slot)
{
 of_node_put(slot->dn);
 kfree(slot->name);
 kfree(slot);
}
