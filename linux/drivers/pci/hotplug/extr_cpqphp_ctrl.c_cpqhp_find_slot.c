
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct slot {scalar_t__ device; struct slot* next; } ;
struct controller {struct slot* slot; } ;



__attribute__((used)) static struct slot *cpqhp_find_slot(struct controller *ctrl, u8 device)
{
 struct slot *slot = ctrl->slot;

 while (slot && (slot->device != device))
  slot = slot->next;

 return slot;
}
