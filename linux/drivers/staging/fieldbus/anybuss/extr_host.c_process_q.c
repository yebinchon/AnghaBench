
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct kfifo {int dummy; } ;
struct anybuss_host {int dummy; } ;
struct ab_task {int result; int (* task_fn ) (struct anybuss_host*,struct ab_task*) ;} ;


 int EINPROGRESS ;
 int ab_task_dequeue_finish_put (struct kfifo*,struct anybuss_host*) ;
 int kfifo_out_peek (struct kfifo*,struct ab_task**,int) ;
 int stub1 (struct anybuss_host*,struct ab_task*) ;

__attribute__((used)) static void process_q(struct anybuss_host *cd, struct kfifo *q)
{
 struct ab_task *t;
 int ret;

 ret = kfifo_out_peek(q, &t, sizeof(t));
 if (!ret)
  return;
 t->result = t->task_fn(cd, t);
 if (t->result != -EINPROGRESS)
  ab_task_dequeue_finish_put(q, cd);
}
