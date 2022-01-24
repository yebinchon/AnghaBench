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
typedef  int /*<<< orphan*/  u32 ;
struct tee_shm {int dummy; } ;
struct tee_context {struct optee_context_data* data; } ;
struct optee_session {int /*<<< orphan*/  list_node; } ;
struct optee_msg_arg {int /*<<< orphan*/  session; int /*<<< orphan*/  cmd; } ;
struct optee_context_data {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct tee_shm*) ; 
 int /*<<< orphan*/  OPTEE_MSG_CMD_CLOSE_SESSION ; 
 int FUNC1 (struct tee_shm*) ; 
 struct optee_session* FUNC2 (struct optee_context_data*,int /*<<< orphan*/ ) ; 
 struct tee_shm* FUNC3 (struct tee_context*,int /*<<< orphan*/ ,struct optee_msg_arg**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct optee_session*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tee_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tee_shm*) ; 

int FUNC10(struct tee_context *ctx, u32 session)
{
	struct optee_context_data *ctxdata = ctx->data;
	struct tee_shm *shm;
	struct optee_msg_arg *msg_arg;
	phys_addr_t msg_parg;
	struct optee_session *sess;

	/* Check that the session is valid and remove it from the list */
	FUNC6(&ctxdata->mutex);
	sess = FUNC2(ctxdata, session);
	if (sess)
		FUNC5(&sess->list_node);
	FUNC7(&ctxdata->mutex);
	if (!sess)
		return -EINVAL;
	FUNC4(sess);

	shm = FUNC3(ctx, 0, &msg_arg, &msg_parg);
	if (FUNC0(shm))
		return FUNC1(shm);

	msg_arg->cmd = OPTEE_MSG_CMD_CLOSE_SESSION;
	msg_arg->session = session;
	FUNC8(ctx, msg_parg);

	FUNC9(shm);
	return 0;
}