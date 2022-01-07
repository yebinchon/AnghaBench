
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab_task {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static struct ab_task *__ab_task_get(struct ab_task *t)
{
 kref_get(&t->refcount);
 return t;
}
