
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlogicpti {struct qlogicpti* next; } ;


 struct qlogicpti* qptichain ;
 int qptichain_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void qpti_chain_add(struct qlogicpti *qpti)
{
 spin_lock_irq(&qptichain_lock);
 if (qptichain != ((void*)0)) {
  struct qlogicpti *qlink = qptichain;

  while(qlink->next)
   qlink = qlink->next;
  qlink->next = qpti;
 } else {
  qptichain = qpti;
 }
 qpti->next = ((void*)0);
 spin_unlock_irq(&qptichain_lock);
}
