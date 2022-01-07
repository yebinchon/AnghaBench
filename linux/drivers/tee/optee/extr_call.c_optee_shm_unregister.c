
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tee_shm {int dummy; } ;
struct tee_context {int dummy; } ;
struct optee_msg_arg {scalar_t__ ret; TYPE_3__* params; int cmd; } ;
typedef int phys_addr_t ;
struct TYPE_4__ {unsigned long shm_ref; } ;
struct TYPE_5__ {TYPE_1__ rmem; } ;
struct TYPE_6__ {TYPE_2__ u; int attr; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct tee_shm*) ;
 int OPTEE_MSG_ATTR_TYPE_RMEM_INPUT ;
 int OPTEE_MSG_CMD_UNREGISTER_SHM ;
 int PTR_ERR (struct tee_shm*) ;
 scalar_t__ TEEC_SUCCESS ;
 struct tee_shm* get_msg_arg (struct tee_context*,int,struct optee_msg_arg**,int *) ;
 scalar_t__ optee_do_call_with_arg (struct tee_context*,int ) ;
 int tee_shm_free (struct tee_shm*) ;

int optee_shm_unregister(struct tee_context *ctx, struct tee_shm *shm)
{
 struct tee_shm *shm_arg;
 struct optee_msg_arg *msg_arg;
 phys_addr_t msg_parg;
 int rc = 0;

 shm_arg = get_msg_arg(ctx, 1, &msg_arg, &msg_parg);
 if (IS_ERR(shm_arg))
  return PTR_ERR(shm_arg);

 msg_arg->cmd = OPTEE_MSG_CMD_UNREGISTER_SHM;

 msg_arg->params[0].attr = OPTEE_MSG_ATTR_TYPE_RMEM_INPUT;
 msg_arg->params[0].u.rmem.shm_ref = (unsigned long)shm;

 if (optee_do_call_with_arg(ctx, msg_parg) ||
     msg_arg->ret != TEEC_SUCCESS)
  rc = -EINVAL;
 tee_shm_free(shm_arg);
 return rc;
}
