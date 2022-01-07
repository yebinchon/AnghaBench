
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tee_shm {int dummy; } ;
struct tee_context {int dummy; } ;
struct optee_msg_arg {int num_params; void* ret; TYPE_3__* params; int ret_origin; } ;
struct TYPE_4__ {int a; scalar_t__ b; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
struct TYPE_6__ {scalar_t__ attr; TYPE_2__ u; } ;


 scalar_t__ OPTEE_MSG_ATTR_TYPE_VALUE_INPUT ;


 void* TEEC_ERROR_BAD_PARAMETERS ;
 int TEEC_ORIGIN_COMMS ;
 void* TEEC_SUCCESS ;
 int cmd_free_suppl (struct tee_context*,struct tee_shm*) ;
 int tee_shm_free (struct tee_shm*) ;

__attribute__((used)) static void handle_rpc_func_cmd_shm_free(struct tee_context *ctx,
      struct optee_msg_arg *arg)
{
 struct tee_shm *shm;

 arg->ret_origin = TEEC_ORIGIN_COMMS;

 if (arg->num_params != 1 ||
     arg->params[0].attr != OPTEE_MSG_ATTR_TYPE_VALUE_INPUT) {
  arg->ret = TEEC_ERROR_BAD_PARAMETERS;
  return;
 }

 shm = (struct tee_shm *)(unsigned long)arg->params[0].u.value.b;
 switch (arg->params[0].u.value.a) {
 case 129:
  cmd_free_suppl(ctx, shm);
  break;
 case 128:
  tee_shm_free(shm);
  break;
 default:
  arg->ret = TEEC_ERROR_BAD_PARAMETERS;
 }
 arg->ret = TEEC_SUCCESS;
}
