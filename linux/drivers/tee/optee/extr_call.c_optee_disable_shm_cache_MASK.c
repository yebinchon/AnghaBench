#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tee_shm {int dummy; } ;
struct optee_smc_disable_shm_cache_result {scalar_t__ status; int /*<<< orphan*/  shm_lower32; int /*<<< orphan*/  shm_upper32; } ;
struct optee_call_waiter {int dummy; } ;
struct optee {int /*<<< orphan*/  call_queue; int /*<<< orphan*/  (* invoke_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smccc_res*) ;} ;
struct arm_smccc_res {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPTEE_SMC_DISABLE_SHM_CACHE ; 
 scalar_t__ OPTEE_SMC_RETURN_ENOTAVAIL ; 
 scalar_t__ OPTEE_SMC_RETURN_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct optee_call_waiter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct optee_call_waiter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct optee_call_waiter*) ; 
 struct tee_shm* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smccc_res*) ; 
 int /*<<< orphan*/  FUNC5 (struct tee_shm*) ; 

void FUNC6(struct optee *optee)
{
	struct optee_call_waiter w;

	/* We need to retry until secure world isn't busy. */
	FUNC2(&optee->call_queue, &w);
	while (true) {
		union {
			struct arm_smccc_res smccc;
			struct optee_smc_disable_shm_cache_result result;
		} res;

		optee->invoke_fn(OPTEE_SMC_DISABLE_SHM_CACHE, 0, 0, 0, 0, 0, 0,
				 0, &res.smccc);
		if (res.result.status == OPTEE_SMC_RETURN_ENOTAVAIL)
			break; /* All shm's freed */
		if (res.result.status == OPTEE_SMC_RETURN_OK) {
			struct tee_shm *shm;

			shm = FUNC3(res.result.shm_upper32,
					      res.result.shm_lower32);
			FUNC5(shm);
		} else {
			FUNC1(&optee->call_queue, &w);
		}
	}
	FUNC0(&optee->call_queue, &w);
}