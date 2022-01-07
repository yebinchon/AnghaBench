
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_qdio_out_q {int timer; } ;


 int QETH_TX_TIMER_USECS ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ timer_pending (int *) ;
 scalar_t__ usecs_to_jiffies (int ) ;

__attribute__((used)) static inline void qeth_tx_arm_timer(struct qeth_qdio_out_q *queue)
{
 if (timer_pending(&queue->timer))
  return;
 mod_timer(&queue->timer, usecs_to_jiffies(QETH_TX_TIMER_USECS) +
     jiffies);
}
