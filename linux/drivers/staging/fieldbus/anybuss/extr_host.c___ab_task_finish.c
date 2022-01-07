
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anybuss_host {int dummy; } ;
struct ab_task {int done; int (* done_fn ) (struct anybuss_host*) ;} ;


 int complete (int *) ;
 int stub1 (struct anybuss_host*) ;

__attribute__((used)) static void __ab_task_finish(struct ab_task *t, struct anybuss_host *cd)
{
 if (t->done_fn)
  t->done_fn(cd);
 complete(&t->done);
}
