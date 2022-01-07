
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; } ;
struct msgqueue_entry {TYPE_1__ msg; struct msgqueue_entry* next; } ;
struct TYPE_5__ {struct msgqueue_entry* qe; } ;
typedef TYPE_2__ MsgQueue_t ;



int msgqueue_msglength(MsgQueue_t *msgq)
{
 struct msgqueue_entry *mq = msgq->qe;
 int length = 0;

 for (mq = msgq->qe; mq; mq = mq->next)
  length += mq->msg.length;

 return length;
}
