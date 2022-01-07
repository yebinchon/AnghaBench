
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tee_shm {int dummy; } ;
struct TYPE_3__ {scalar_t__ c; int b; int a; } ;
struct TYPE_4__ {TYPE_1__ value; } ;
struct tee_param {TYPE_2__ u; int attr; } ;
struct tee_context {int dummy; } ;


 int OPTEE_MSG_RPC_CMD_SHM_FREE ;
 int OPTEE_MSG_RPC_SHM_TYPE_APPL ;
 int TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT ;
 int optee_supp_thrd_req (struct tee_context*,int ,int,struct tee_param*) ;
 int tee_shm_get_id (struct tee_shm*) ;
 int tee_shm_put (struct tee_shm*) ;

__attribute__((used)) static void cmd_free_suppl(struct tee_context *ctx, struct tee_shm *shm)
{
 struct tee_param param;

 param.attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT;
 param.u.value.a = OPTEE_MSG_RPC_SHM_TYPE_APPL;
 param.u.value.b = tee_shm_get_id(shm);
 param.u.value.c = 0;
 tee_shm_put(shm);

 optee_supp_thrd_req(ctx, OPTEE_MSG_RPC_CMD_SHM_FREE, 1, &param);
}
