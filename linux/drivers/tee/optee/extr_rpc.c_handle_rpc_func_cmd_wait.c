
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct optee_msg_arg {int num_params; int ret; TYPE_3__* params; } ;
struct TYPE_4__ {int a; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
struct TYPE_6__ {int attr; TYPE_2__ u; } ;


 int OPTEE_MSG_ATTR_TYPE_MASK ;
 int OPTEE_MSG_ATTR_TYPE_VALUE_INPUT ;
 int TEEC_ERROR_BAD_PARAMETERS ;
 int TEEC_SUCCESS ;
 int msleep_interruptible (int ) ;

__attribute__((used)) static void handle_rpc_func_cmd_wait(struct optee_msg_arg *arg)
{
 u32 msec_to_wait;

 if (arg->num_params != 1)
  goto bad;

 if ((arg->params[0].attr & OPTEE_MSG_ATTR_TYPE_MASK) !=
   OPTEE_MSG_ATTR_TYPE_VALUE_INPUT)
  goto bad;

 msec_to_wait = arg->params[0].u.value.a;


 msleep_interruptible(msec_to_wait);

 arg->ret = TEEC_SUCCESS;
 return;
bad:
 arg->ret = TEEC_ERROR_BAD_PARAMETERS;
}
