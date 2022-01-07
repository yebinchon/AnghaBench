
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fcoe_task_params {TYPE_2__* sqe; } ;
struct TYPE_3__ {int seq_rec_updated_offset; } ;
struct TYPE_4__ {TYPE_1__ additional_info_union; } ;


 int FCOE_SEQUENCE_RECOVERY ;
 int init_common_sqe (struct fcoe_task_params*,int ) ;

int init_initiator_sequence_recovery_fcoe_task(
 struct fcoe_task_params *task_params, u32 desired_offset)
{
 init_common_sqe(task_params, FCOE_SEQUENCE_RECOVERY);
 task_params->sqe->additional_info_union.seq_rec_updated_offset =
        desired_offset;
 return 0;
}
