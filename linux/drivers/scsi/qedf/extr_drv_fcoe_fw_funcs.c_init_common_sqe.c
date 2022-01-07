
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fcoe_task_params {int itid; TYPE_1__* sqe; } ;
typedef enum fcoe_sqe_request_type { ____Placeholder_fcoe_sqe_request_type } fcoe_sqe_request_type ;
struct TYPE_2__ {int task_id; int flags; } ;


 int FCOE_WQE_REQ_TYPE ;
 int SET_FIELD (int ,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static inline void init_common_sqe(struct fcoe_task_params *task_params,
       enum fcoe_sqe_request_type request_type)
{
 memset(task_params->sqe, 0, sizeof(*(task_params->sqe)));
 SET_FIELD(task_params->sqe->flags, FCOE_WQE_REQ_TYPE,
    request_type);
 task_params->sqe->task_id = task_params->itid;
}
