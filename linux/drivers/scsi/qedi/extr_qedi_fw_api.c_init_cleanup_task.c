
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task_params {int dummy; } ;


 int ISCSI_TASK_TYPE_MIDPATH ;
 int init_sqe (struct iscsi_task_params*,int *,int *,int *,int *,int ,int) ;

int init_cleanup_task(struct iscsi_task_params *task_params)
{
 init_sqe(task_params, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ISCSI_TASK_TYPE_MIDPATH,
   1);
 return 0;
}
