
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int list; } ;
struct qeth_card {int lock; int cmd_waiter_list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void qeth_enqueue_cmd(struct qeth_card *card,
        struct qeth_cmd_buffer *iob)
{
 spin_lock_irq(&card->lock);
 list_add_tail(&iob->list, &card->cmd_waiter_list);
 spin_unlock_irq(&card->lock);
}
