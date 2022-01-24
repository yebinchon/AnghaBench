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
typedef  void* u32 ;
struct tee_shm {int dummy; } ;
struct tee_context {struct optee_context_data* data; } ;
struct optee_session {int dummy; } ;
struct optee_msg_arg {void* cancel_id; void* session; int /*<<< orphan*/  cmd; } ;
struct optee_context_data {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct tee_shm*) ; 
 int /*<<< orphan*/  OPTEE_MSG_CMD_CANCEL ; 
 int FUNC1 (struct tee_shm*) ; 
 struct optee_session* FUNC2 (struct optee_context_data*,void*) ; 
 struct tee_shm* FUNC3 (struct tee_context*,int /*<<< orphan*/ ,struct optee_msg_arg**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tee_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tee_shm*) ; 

int FUNC8(struct tee_context *ctx, u32 cancel_id, u32 session)
{
	struct optee_context_data *ctxdata = ctx->data;
	struct tee_shm *shm;
	struct optee_msg_arg *msg_arg;
	phys_addr_t msg_parg;
	struct optee_session *sess;

	/* Check that the session is valid */
	FUNC4(&ctxdata->mutex);
	sess = FUNC2(ctxdata, session);
	FUNC5(&ctxdata->mutex);
	if (!sess)
		return -EINVAL;

	shm = FUNC3(ctx, 0, &msg_arg, &msg_parg);
	if (FUNC0(shm))
		return FUNC1(shm);

	msg_arg->cmd = OPTEE_MSG_CMD_CANCEL;
	msg_arg->session = session;
	msg_arg->cancel_id = cancel_id;
	FUNC6(ctx, msg_parg);

	FUNC7(shm);
	return 0;
}