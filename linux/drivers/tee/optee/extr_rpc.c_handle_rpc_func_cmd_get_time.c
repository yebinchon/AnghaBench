
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timespec64 {int tv_nsec; int tv_sec; } ;
struct optee_msg_arg {int num_params; int ret; TYPE_3__* params; } ;
struct TYPE_4__ {int b; int a; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
struct TYPE_6__ {int attr; TYPE_2__ u; } ;


 int OPTEE_MSG_ATTR_TYPE_MASK ;
 int OPTEE_MSG_ATTR_TYPE_VALUE_OUTPUT ;
 int TEEC_ERROR_BAD_PARAMETERS ;
 int TEEC_SUCCESS ;
 int ktime_get_real_ts64 (struct timespec64*) ;

__attribute__((used)) static void handle_rpc_func_cmd_get_time(struct optee_msg_arg *arg)
{
 struct timespec64 ts;

 if (arg->num_params != 1)
  goto bad;
 if ((arg->params[0].attr & OPTEE_MSG_ATTR_TYPE_MASK) !=
   OPTEE_MSG_ATTR_TYPE_VALUE_OUTPUT)
  goto bad;

 ktime_get_real_ts64(&ts);
 arg->params[0].u.value.a = ts.tv_sec;
 arg->params[0].u.value.b = ts.tv_nsec;

 arg->ret = TEEC_SUCCESS;
 return;
bad:
 arg->ret = TEEC_ERROR_BAD_PARAMETERS;
}
