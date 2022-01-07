
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int list; } ;
struct qeth_card {int lock; } ;


 int list_del (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void qeth_dequeue_cmd(struct qeth_card *card,
        struct qeth_cmd_buffer *iob)
{
 spin_lock_irq(&card->lock);
 list_del(&iob->list);
 spin_unlock_irq(&card->lock);
}
