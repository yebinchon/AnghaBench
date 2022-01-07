
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tee_shm {int dummy; } ;
struct TYPE_4__ {size_t b; scalar_t__ c; int a; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
struct tee_param {TYPE_2__ u; int attr; } ;
struct tee_context {int teedev; } ;
struct TYPE_6__ {int mutex; int ctx; } ;
struct optee {TYPE_3__ supp; } ;


 int ENOMEM ;
 struct tee_shm* ERR_PTR (int ) ;
 int OPTEE_MSG_RPC_CMD_SHM_ALLOC ;
 int OPTEE_MSG_RPC_SHM_TYPE_APPL ;
 int TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ optee_supp_thrd_req (struct tee_context*,int ,int,struct tee_param*) ;
 struct optee* tee_get_drvdata (int ) ;
 struct tee_shm* tee_shm_get_from_id (int ,scalar_t__) ;

__attribute__((used)) static struct tee_shm *cmd_alloc_suppl(struct tee_context *ctx, size_t sz)
{
 u32 ret;
 struct tee_param param;
 struct optee *optee = tee_get_drvdata(ctx->teedev);
 struct tee_shm *shm;

 param.attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT;
 param.u.value.a = OPTEE_MSG_RPC_SHM_TYPE_APPL;
 param.u.value.b = sz;
 param.u.value.c = 0;

 ret = optee_supp_thrd_req(ctx, OPTEE_MSG_RPC_CMD_SHM_ALLOC, 1, &param);
 if (ret)
  return ERR_PTR(-ENOMEM);

 mutex_lock(&optee->supp.mutex);

 shm = tee_shm_get_from_id(optee->supp.ctx, param.u.value.c);
 mutex_unlock(&optee->supp.mutex);
 return shm;
}
