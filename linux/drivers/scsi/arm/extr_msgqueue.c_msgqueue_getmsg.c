
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct message {int dummy; } ;
struct msgqueue_entry {struct message msg; struct msgqueue_entry* next; } ;
struct TYPE_3__ {struct msgqueue_entry* qe; } ;
typedef TYPE_1__ MsgQueue_t ;



struct message *msgqueue_getmsg(MsgQueue_t *msgq, int msgno)
{
 struct msgqueue_entry *mq;

 for (mq = msgq->qe; mq && msgno; mq = mq->next, msgno--);

 return mq ? &mq->msg : ((void*)0);
}
