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
typedef  scalar_t__ u32 ;
struct tee_context {int /*<<< orphan*/  teedev; } ;
struct optee_rpc_param {scalar_t__ a0; int /*<<< orphan*/  a3; int /*<<< orphan*/  a2; int /*<<< orphan*/  a1; int /*<<< orphan*/  a7; int /*<<< orphan*/  a6; int /*<<< orphan*/  a5; int /*<<< orphan*/  a4; } ;
struct optee_call_waiter {int dummy; } ;
struct optee_call_ctx {int dummy; } ;
struct optee {int /*<<< orphan*/  call_queue; int /*<<< orphan*/  (* invoke_fn ) (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smccc_res*) ;} ;
struct arm_smccc_res {scalar_t__ a0; int /*<<< orphan*/  a3; int /*<<< orphan*/  a2; int /*<<< orphan*/  a1; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 scalar_t__ OPTEE_SMC_CALL_WITH_ARG ; 
 scalar_t__ OPTEE_SMC_RETURN_ETHREAD_LIMIT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct optee_call_waiter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct optee_call_waiter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct optee_call_waiter*) ; 
 int /*<<< orphan*/  FUNC5 (struct tee_context*,struct optee_rpc_param*,struct optee_call_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct optee_call_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smccc_res*) ; 
 struct optee* FUNC9 (int /*<<< orphan*/ ) ; 

u32 FUNC10(struct tee_context *ctx, phys_addr_t parg)
{
	struct optee *optee = FUNC9(ctx->teedev);
	struct optee_call_waiter w;
	struct optee_rpc_param param = { };
	struct optee_call_ctx call_ctx = { };
	u32 ret;

	param.a0 = OPTEE_SMC_CALL_WITH_ARG;
	FUNC7(&param.a1, &param.a2, parg);
	/* Initialize waiter */
	FUNC4(&optee->call_queue, &w);
	while (true) {
		struct arm_smccc_res res;

		optee->invoke_fn(param.a0, param.a1, param.a2, param.a3,
				 param.a4, param.a5, param.a6, param.a7,
				 &res);

		if (res.a0 == OPTEE_SMC_RETURN_ETHREAD_LIMIT) {
			/*
			 * Out of threads in secure world, wait for a thread
			 * become available.
			 */
			FUNC3(&optee->call_queue, &w);
		} else if (FUNC0(res.a0)) {
			FUNC1();
			param.a0 = res.a0;
			param.a1 = res.a1;
			param.a2 = res.a2;
			param.a3 = res.a3;
			FUNC5(ctx, &param, &call_ctx);
		} else {
			ret = res.a0;
			break;
		}
	}

	FUNC6(&call_ctx);
	/*
	 * We're done with our thread in secure world, if there's any
	 * thread waiters wake up one.
	 */
	FUNC2(&optee->call_queue, &w);

	return ret;
}