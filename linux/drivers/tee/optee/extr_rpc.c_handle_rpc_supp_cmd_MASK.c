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
struct tee_param {int dummy; } ;
struct tee_context {int dummy; } ;
struct optee_msg_arg {void* ret; int /*<<< orphan*/  num_params; int /*<<< orphan*/  params; int /*<<< orphan*/  cmd; int /*<<< orphan*/  ret_origin; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* TEEC_ERROR_BAD_PARAMETERS ; 
 void* TEEC_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  TEEC_ORIGIN_COMMS ; 
 int /*<<< orphan*/  FUNC0 (struct tee_param*) ; 
 struct tee_param* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tee_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct tee_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tee_param*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tee_param*) ; 

__attribute__((used)) static void FUNC5(struct tee_context *ctx,
				struct optee_msg_arg *arg)
{
	struct tee_param *params;

	arg->ret_origin = TEEC_ORIGIN_COMMS;

	params = FUNC1(arg->num_params, sizeof(struct tee_param),
			       GFP_KERNEL);
	if (!params) {
		arg->ret = TEEC_ERROR_OUT_OF_MEMORY;
		return;
	}

	if (FUNC2(params, arg->num_params, arg->params)) {
		arg->ret = TEEC_ERROR_BAD_PARAMETERS;
		goto out;
	}

	arg->ret = FUNC3(ctx, arg->cmd, arg->num_params, params);

	if (FUNC4(arg->params, arg->num_params, params))
		arg->ret = TEEC_ERROR_BAD_PARAMETERS;
out:
	FUNC0(params);
}