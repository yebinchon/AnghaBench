
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct optee_msg_arg {int num_params; int ret; TYPE_3__* params; } ;
struct optee {int wait_queue; } ;
struct TYPE_4__ {int a; int b; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
struct TYPE_6__ {int attr; TYPE_2__ u; } ;


 int OPTEE_MSG_ATTR_TYPE_MASK ;
 int OPTEE_MSG_ATTR_TYPE_VALUE_INPUT ;


 int TEEC_ERROR_BAD_PARAMETERS ;
 int TEEC_SUCCESS ;
 int wq_sleep (int *,int ) ;
 int wq_wakeup (int *,int ) ;

__attribute__((used)) static void handle_rpc_func_cmd_wq(struct optee *optee,
       struct optee_msg_arg *arg)
{
 if (arg->num_params != 1)
  goto bad;

 if ((arg->params[0].attr & OPTEE_MSG_ATTR_TYPE_MASK) !=
   OPTEE_MSG_ATTR_TYPE_VALUE_INPUT)
  goto bad;

 switch (arg->params[0].u.value.a) {
 case 129:
  wq_sleep(&optee->wait_queue, arg->params[0].u.value.b);
  break;
 case 128:
  wq_wakeup(&optee->wait_queue, arg->params[0].u.value.b);
  break;
 default:
  goto bad;
 }

 arg->ret = TEEC_SUCCESS;
 return;
bad:
 arg->ret = TEEC_ERROR_BAD_PARAMETERS;
}
