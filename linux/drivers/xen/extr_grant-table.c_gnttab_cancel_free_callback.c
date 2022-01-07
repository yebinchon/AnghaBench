
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnttab_free_callback {struct gnttab_free_callback* next; } ;


 struct gnttab_free_callback* gnttab_free_callback_list ;
 int gnttab_list_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void gnttab_cancel_free_callback(struct gnttab_free_callback *callback)
{
 struct gnttab_free_callback **pcb;
 unsigned long flags;

 spin_lock_irqsave(&gnttab_list_lock, flags);
 for (pcb = &gnttab_free_callback_list; *pcb; pcb = &(*pcb)->next) {
  if (*pcb == callback) {
   *pcb = callback->next;
   break;
  }
 }
 spin_unlock_irqrestore(&gnttab_list_lock, flags);
}
