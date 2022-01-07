
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task {int refcount; } ;


 int refcount_inc (int *) ;

void __iscsi_get_task(struct iscsi_task *task)
{
 refcount_inc(&task->refcount);
}
