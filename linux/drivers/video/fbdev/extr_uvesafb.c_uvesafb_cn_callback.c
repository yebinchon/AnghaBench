
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvesafb_task {int buf_len; } ;
struct TYPE_2__ {int buf_len; } ;
struct uvesafb_ktask {scalar_t__ ack; int done; TYPE_1__ t; TYPE_1__* buf; } ;
struct netlink_skb_parms {int dummy; } ;
struct cn_msg {size_t seq; scalar_t__ ack; int len; scalar_t__ data; } ;


 int CAP_SYS_ADMIN ;
 size_t UVESAFB_TASKS_MAX ;
 int capable (int ) ;
 int complete (int ) ;
 int memcpy (TYPE_1__*,struct uvesafb_task*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uvfb_lock ;
 struct uvesafb_ktask** uvfb_tasks ;

__attribute__((used)) static void uvesafb_cn_callback(struct cn_msg *msg, struct netlink_skb_parms *nsp)
{
 struct uvesafb_task *utask;
 struct uvesafb_ktask *task;

 if (!capable(CAP_SYS_ADMIN))
  return;

 if (msg->seq >= UVESAFB_TASKS_MAX)
  return;

 mutex_lock(&uvfb_lock);
 task = uvfb_tasks[msg->seq];

 if (!task || msg->ack != task->ack) {
  mutex_unlock(&uvfb_lock);
  return;
 }

 utask = (struct uvesafb_task *)msg->data;


 if (task->t.buf_len < utask->buf_len ||
     utask->buf_len > msg->len - sizeof(*utask)) {
  mutex_unlock(&uvfb_lock);
  return;
 }

 uvfb_tasks[msg->seq] = ((void*)0);
 mutex_unlock(&uvfb_lock);

 memcpy(&task->t, utask, sizeof(*utask));

 if (task->t.buf_len && task->buf)
  memcpy(task->buf, utask + 1, task->t.buf_len);

 complete(task->done);
 return;
}
