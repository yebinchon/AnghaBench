
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_task {int dummy; } ;
typedef int gfp_t ;


 int mvs_task_exec (struct sas_task*,int ,int *,int ,int *) ;

int mvs_queue_command(struct sas_task *task, gfp_t gfp_flags)
{
 return mvs_task_exec(task, gfp_flags, ((void*)0), 0, ((void*)0));
}
