
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_task_params {int dummy; } ;


 int SEND_FCOE_ABTS_REQUEST ;
 int init_common_sqe (struct fcoe_task_params*,int ) ;

int init_initiator_abort_fcoe_task(struct fcoe_task_params *task_params)
{
 init_common_sqe(task_params, SEND_FCOE_ABTS_REQUEST);
 return 0;
}
