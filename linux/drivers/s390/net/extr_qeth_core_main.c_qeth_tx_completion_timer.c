
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct qeth_qdio_out_q {int napi; } ;


 int QETH_TXQ_STAT_INC (struct qeth_qdio_out_q*,int ) ;
 int completion_timer ;
 struct qeth_qdio_out_q* from_timer (int ,struct timer_list*,struct timer_list*) ;
 int napi_schedule (int *) ;
 struct qeth_qdio_out_q* queue ;

__attribute__((used)) static void qeth_tx_completion_timer(struct timer_list *timer)
{
 struct qeth_qdio_out_q *queue = from_timer(queue, timer, timer);

 napi_schedule(&queue->napi);
 QETH_TXQ_STAT_INC(queue, completion_timer);
}
