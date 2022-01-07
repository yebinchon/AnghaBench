
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tee_context {int teedev; } ;
struct optee_rpc_param {scalar_t__ a0; int a3; int a2; int a1; int a7; int a6; int a5; int a4; } ;
struct optee_call_waiter {int dummy; } ;
struct optee_call_ctx {int dummy; } ;
struct optee {int call_queue; int (* invoke_fn ) (scalar_t__,int ,int ,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;} ;
struct arm_smccc_res {scalar_t__ a0; int a3; int a2; int a1; } ;
typedef int phys_addr_t ;


 scalar_t__ OPTEE_SMC_CALL_WITH_ARG ;
 scalar_t__ OPTEE_SMC_RETURN_ETHREAD_LIMIT ;
 scalar_t__ OPTEE_SMC_RETURN_IS_RPC (scalar_t__) ;
 int might_sleep () ;
 int optee_cq_wait_final (int *,struct optee_call_waiter*) ;
 int optee_cq_wait_for_completion (int *,struct optee_call_waiter*) ;
 int optee_cq_wait_init (int *,struct optee_call_waiter*) ;
 int optee_handle_rpc (struct tee_context*,struct optee_rpc_param*,struct optee_call_ctx*) ;
 int optee_rpc_finalize_call (struct optee_call_ctx*) ;
 int reg_pair_from_64 (int *,int *,int ) ;
 int stub1 (scalar_t__,int ,int ,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;
 struct optee* tee_get_drvdata (int ) ;

u32 optee_do_call_with_arg(struct tee_context *ctx, phys_addr_t parg)
{
 struct optee *optee = tee_get_drvdata(ctx->teedev);
 struct optee_call_waiter w;
 struct optee_rpc_param param = { };
 struct optee_call_ctx call_ctx = { };
 u32 ret;

 param.a0 = OPTEE_SMC_CALL_WITH_ARG;
 reg_pair_from_64(&param.a1, &param.a2, parg);

 optee_cq_wait_init(&optee->call_queue, &w);
 while (1) {
  struct arm_smccc_res res;

  optee->invoke_fn(param.a0, param.a1, param.a2, param.a3,
     param.a4, param.a5, param.a6, param.a7,
     &res);

  if (res.a0 == OPTEE_SMC_RETURN_ETHREAD_LIMIT) {




   optee_cq_wait_for_completion(&optee->call_queue, &w);
  } else if (OPTEE_SMC_RETURN_IS_RPC(res.a0)) {
   might_sleep();
   param.a0 = res.a0;
   param.a1 = res.a1;
   param.a2 = res.a2;
   param.a3 = res.a3;
   optee_handle_rpc(ctx, &param, &call_ctx);
  } else {
   ret = res.a0;
   break;
  }
 }

 optee_rpc_finalize_call(&call_ctx);




 optee_cq_wait_final(&optee->call_queue, &w);

 return ret;
}
