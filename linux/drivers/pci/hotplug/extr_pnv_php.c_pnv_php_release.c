
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_php_slot {struct pnv_php_slot* parent; int link; } ;


 int list_del (int *) ;
 int pnv_php_lock ;
 int pnv_php_put_slot (struct pnv_php_slot*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pnv_php_release(struct pnv_php_slot *php_slot)
{
 unsigned long flags;


 spin_lock_irqsave(&pnv_php_lock, flags);
 list_del(&php_slot->link);
 spin_unlock_irqrestore(&pnv_php_lock, flags);


 pnv_php_put_slot(php_slot);
 pnv_php_put_slot(php_slot->parent);
}
