
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optee_call_waiter {int dummy; } ;
struct optee {int call_queue; int (* invoke_fn ) (int ,int ,int ,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;} ;
struct arm_smccc_res {scalar_t__ a0; } ;


 int OPTEE_SMC_ENABLE_SHM_CACHE ;
 scalar_t__ OPTEE_SMC_RETURN_OK ;
 int optee_cq_wait_final (int *,struct optee_call_waiter*) ;
 int optee_cq_wait_for_completion (int *,struct optee_call_waiter*) ;
 int optee_cq_wait_init (int *,struct optee_call_waiter*) ;
 int stub1 (int ,int ,int ,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;

void optee_enable_shm_cache(struct optee *optee)
{
 struct optee_call_waiter w;


 optee_cq_wait_init(&optee->call_queue, &w);
 while (1) {
  struct arm_smccc_res res;

  optee->invoke_fn(OPTEE_SMC_ENABLE_SHM_CACHE, 0, 0, 0, 0, 0, 0,
     0, &res);
  if (res.a0 == OPTEE_SMC_RETURN_OK)
   break;
  optee_cq_wait_for_completion(&optee->call_queue, &w);
 }
 optee_cq_wait_final(&optee->call_queue, &w);
}
