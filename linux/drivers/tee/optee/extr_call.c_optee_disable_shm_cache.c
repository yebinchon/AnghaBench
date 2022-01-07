
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm {int dummy; } ;
struct optee_smc_disable_shm_cache_result {scalar_t__ status; int shm_lower32; int shm_upper32; } ;
struct optee_call_waiter {int dummy; } ;
struct optee {int call_queue; int (* invoke_fn ) (int ,int ,int ,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;} ;
struct arm_smccc_res {int dummy; } ;


 int OPTEE_SMC_DISABLE_SHM_CACHE ;
 scalar_t__ OPTEE_SMC_RETURN_ENOTAVAIL ;
 scalar_t__ OPTEE_SMC_RETURN_OK ;
 int optee_cq_wait_final (int *,struct optee_call_waiter*) ;
 int optee_cq_wait_for_completion (int *,struct optee_call_waiter*) ;
 int optee_cq_wait_init (int *,struct optee_call_waiter*) ;
 struct tee_shm* reg_pair_to_ptr (int ,int ) ;
 int stub1 (int ,int ,int ,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;
 int tee_shm_free (struct tee_shm*) ;

void optee_disable_shm_cache(struct optee *optee)
{
 struct optee_call_waiter w;


 optee_cq_wait_init(&optee->call_queue, &w);
 while (1) {
  union {
   struct arm_smccc_res smccc;
   struct optee_smc_disable_shm_cache_result result;
  } res;

  optee->invoke_fn(OPTEE_SMC_DISABLE_SHM_CACHE, 0, 0, 0, 0, 0, 0,
     0, &res.smccc);
  if (res.result.status == OPTEE_SMC_RETURN_ENOTAVAIL)
   break;
  if (res.result.status == OPTEE_SMC_RETURN_OK) {
   struct tee_shm *shm;

   shm = reg_pair_to_ptr(res.result.shm_upper32,
           res.result.shm_lower32);
   tee_shm_free(shm);
  } else {
   optee_cq_wait_for_completion(&optee->call_queue, &w);
  }
 }
 optee_cq_wait_final(&optee->call_queue, &w);
}
