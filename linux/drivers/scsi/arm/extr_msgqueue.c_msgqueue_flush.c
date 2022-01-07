
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct msgqueue_entry {struct msgqueue_entry* next; } ;
struct TYPE_4__ {struct msgqueue_entry* qe; } ;
typedef TYPE_1__ MsgQueue_t ;


 int mqe_free (TYPE_1__*,struct msgqueue_entry*) ;

void msgqueue_flush(MsgQueue_t *msgq)
{
 struct msgqueue_entry *mq, *mqnext;

 for (mq = msgq->qe; mq; mq = mqnext) {
  mqnext = mq->next;
  mqe_free(msgq, mq);
 }
 msgq->qe = ((void*)0);
}
