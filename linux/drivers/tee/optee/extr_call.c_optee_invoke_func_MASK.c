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
struct tee_param {int dummy; } ;
struct tee_ioctl_invoke_arg {void* ret_origin; void* ret; int /*<<< orphan*/  num_params; int /*<<< orphan*/  cancel_id; int /*<<< orphan*/  session; int /*<<< orphan*/  func; } ;
struct tee_context {struct optee_context_data* data; } ;
struct optee_session {int dummy; } ;
struct optee_msg_arg {void* ret_origin; void* ret; int /*<<< orphan*/  params; int /*<<< orphan*/  cancel_id; int /*<<< orphan*/  session; int /*<<< orphan*/  func; int /*<<< orphan*/  cmd; } ;
struct optee_context_data {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct tee_shm*) ; 
 int /*<<< orphan*/  OPTEE_MSG_CMD_INVOKE_COMMAND ; 
 int FUNC1 (struct tee_shm*) ; 
 void* TEEC_ERROR_COMMUNICATION ; 
 void* TEEC_ORIGIN_COMMS ; 
 struct optee_session* FUNC2 (struct optee_context_data*,int /*<<< orphan*/ ) ; 
 struct tee_shm* FUNC3 (struct tee_context*,int /*<<< orphan*/ ,struct optee_msg_arg**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct tee_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct tee_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tee_param*) ; 
 int /*<<< orphan*/  FUNC9 (struct tee_shm*) ; 

int FUNC10(struct tee_context *ctx, struct tee_ioctl_invoke_arg *arg,
		      struct tee_param *param)
{
	struct optee_context_data *ctxdata = ctx->data;
	struct tee_shm *shm;
	struct optee_msg_arg *msg_arg;
	phys_addr_t msg_parg;
	struct optee_session *sess;
	int rc;

	/* Check that the session is valid */
	FUNC4(&ctxdata->mutex);
	sess = FUNC2(ctxdata, arg->session);
	FUNC5(&ctxdata->mutex);
	if (!sess)
		return -EINVAL;

	shm = FUNC3(ctx, arg->num_params, &msg_arg, &msg_parg);
	if (FUNC0(shm))
		return FUNC1(shm);
	msg_arg->cmd = OPTEE_MSG_CMD_INVOKE_COMMAND;
	msg_arg->func = arg->func;
	msg_arg->session = arg->session;
	msg_arg->cancel_id = arg->cancel_id;

	rc = FUNC8(msg_arg->params, arg->num_params, param);
	if (rc)
		goto out;

	if (FUNC6(ctx, msg_parg)) {
		msg_arg->ret = TEEC_ERROR_COMMUNICATION;
		msg_arg->ret_origin = TEEC_ORIGIN_COMMS;
	}

	if (FUNC7(param, arg->num_params, msg_arg->params)) {
		msg_arg->ret = TEEC_ERROR_COMMUNICATION;
		msg_arg->ret_origin = TEEC_ORIGIN_COMMS;
	}

	arg->ret = msg_arg->ret;
	arg->ret_origin = msg_arg->ret_origin;
out:
	FUNC9(shm);
	return rc;
}