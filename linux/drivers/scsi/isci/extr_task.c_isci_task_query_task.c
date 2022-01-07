
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_task {int task_state_flags; } ;


 int SAS_TASK_NEED_DEV_RESET ;
 int TMF_RESP_FUNC_FAILED ;
 int TMF_RESP_FUNC_SUCC ;

int isci_task_query_task(
 struct sas_task *task)
{

 if (task->task_state_flags & SAS_TASK_NEED_DEV_RESET)
  return TMF_RESP_FUNC_FAILED;
 else
  return TMF_RESP_FUNC_SUCC;
}
