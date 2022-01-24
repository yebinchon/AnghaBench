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
struct optee_call_waiter {int dummy; } ;
struct optee {int /*<<< orphan*/  call_queue; int /*<<< orphan*/  (* invoke_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smccc_res*) ;} ;
struct arm_smccc_res {scalar_t__ a0; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPTEE_SMC_ENABLE_SHM_CACHE ; 
 scalar_t__ OPTEE_SMC_RETURN_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct optee_call_waiter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct optee_call_waiter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct optee_call_waiter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smccc_res*) ; 

void FUNC4(struct optee *optee)
{
	struct optee_call_waiter w;

	/* We need to retry until secure world isn't busy. */
	FUNC2(&optee->call_queue, &w);
	while (true) {
		struct arm_smccc_res res;

		optee->invoke_fn(OPTEE_SMC_ENABLE_SHM_CACHE, 0, 0, 0, 0, 0, 0,
				 0, &res);
		if (res.a0 == OPTEE_SMC_RETURN_OK)
			break;
		FUNC1(&optee->call_queue, &w);
	}
	FUNC0(&optee->call_queue, &w);
}