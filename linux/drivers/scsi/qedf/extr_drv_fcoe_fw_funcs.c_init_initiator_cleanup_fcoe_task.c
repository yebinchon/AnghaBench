
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_task_params {int dummy; } ;


 int FCOE_EXCHANGE_CLEANUP ;
 int init_common_sqe (struct fcoe_task_params*,int ) ;

int init_initiator_cleanup_fcoe_task(struct fcoe_task_params *task_params)
{
 init_common_sqe(task_params, FCOE_EXCHANGE_CLEANUP);
 return 0;
}
