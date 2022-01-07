
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct kfifo {int dummy; } ;
struct anybuss_host {int dummy; } ;
struct ab_task {int dummy; } ;


 int WARN_ON (int) ;
 int __ab_task_finish (struct ab_task*,struct anybuss_host*) ;
 int ab_task_put (struct ab_task*) ;
 int kfifo_out (struct kfifo*,struct ab_task**,int) ;

__attribute__((used)) static void
ab_task_dequeue_finish_put(struct kfifo *q, struct anybuss_host *cd)
{
 int ret;
 struct ab_task *t;

 ret = kfifo_out(q, &t, sizeof(t));
 WARN_ON(!ret);
 __ab_task_finish(t, cd);
 ab_task_put(t);
}
