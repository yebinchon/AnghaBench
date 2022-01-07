
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab_task {int refcount; } ;


 int __ab_task_destroy ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void ab_task_put(struct ab_task *t)
{
 kref_put(&t->refcount, __ab_task_destroy);
}
