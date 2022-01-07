
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tee_shm {int dummy; } ;
struct tee_device {int dummy; } ;
struct tee_context {struct tee_device* teedev; } ;
struct optee_rpc_param {int a0; int a2; int a1; int a5; int a4; } ;
struct optee_call_ctx {int dummy; } ;
struct optee {int dummy; } ;
typedef unsigned long phys_addr_t ;


 int IS_ERR (struct tee_shm*) ;
 int OPTEE_SMC_CALL_RETURN_FROM_RPC ;
 int OPTEE_SMC_RETURN_GET_RPC_FUNC (int ) ;




 int TEE_SHM_MAPPED ;
 int handle_rpc_func_cmd (struct tee_context*,struct optee*,struct tee_shm*,struct optee_call_ctx*) ;
 int pr_warn (char*,int ) ;
 int reg_pair_from_64 (int *,int *,unsigned long) ;
 struct tee_shm* reg_pair_to_ptr (int ,int ) ;
 struct optee* tee_get_drvdata (struct tee_device*) ;
 struct tee_shm* tee_shm_alloc (struct tee_context*,int ,int ) ;
 int tee_shm_free (struct tee_shm*) ;
 int tee_shm_get_pa (struct tee_shm*,int ,unsigned long*) ;

void optee_handle_rpc(struct tee_context *ctx, struct optee_rpc_param *param,
        struct optee_call_ctx *call_ctx)
{
 struct tee_device *teedev = ctx->teedev;
 struct optee *optee = tee_get_drvdata(teedev);
 struct tee_shm *shm;
 phys_addr_t pa;

 switch (OPTEE_SMC_RETURN_GET_RPC_FUNC(param->a0)) {
 case 131:
  shm = tee_shm_alloc(ctx, param->a1, TEE_SHM_MAPPED);
  if (!IS_ERR(shm) && !tee_shm_get_pa(shm, 0, &pa)) {
   reg_pair_from_64(&param->a1, &param->a2, pa);
   reg_pair_from_64(&param->a4, &param->a5,
      (unsigned long)shm);
  } else {
   param->a1 = 0;
   param->a2 = 0;
   param->a4 = 0;
   param->a5 = 0;
  }
  break;
 case 128:
  shm = reg_pair_to_ptr(param->a1, param->a2);
  tee_shm_free(shm);
  break;
 case 129:






  break;
 case 130:
  shm = reg_pair_to_ptr(param->a1, param->a2);
  handle_rpc_func_cmd(ctx, optee, shm, call_ctx);
  break;
 default:
  pr_warn("Unknown RPC func 0x%x\n",
   (u32)OPTEE_SMC_RETURN_GET_RPC_FUNC(param->a0));
  break;
 }

 param->a0 = OPTEE_SMC_CALL_RETURN_FROM_RPC;
}
