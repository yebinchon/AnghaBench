#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vchiq_mmal_instance {int /*<<< orphan*/  handle; } ;
struct vchi_held_msg {int dummy; } ;
struct mmal_msg_header {int dummy; } ;
struct TYPE_5__ {struct vchi_held_msg msg_handle; struct mmal_msg* msg; int /*<<< orphan*/  cmplt; } ;
struct TYPE_6__ {TYPE_2__ sync; } ;
struct mmal_msg_context {TYPE_3__ u; int /*<<< orphan*/  handle; } ;
struct TYPE_4__ {scalar_t__ status; int /*<<< orphan*/  context; int /*<<< orphan*/  magic; } ;
struct mmal_msg {TYPE_1__ h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmal_msg*,int,char*) ; 
 int EINVAL ; 
 int ETIME ; 
 int HZ ; 
 scalar_t__ FUNC1 (struct mmal_msg_context*) ; 
 int /*<<< orphan*/  MMAL_MAGIC ; 
 int MMAL_MSG_MAX_SIZE ; 
 int FUNC2 (struct mmal_msg_context*) ; 
 struct mmal_msg_context* FUNC3 (struct vchiq_mmal_instance*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct mmal_msg_context*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct mmal_msg*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(struct vchiq_mmal_instance *instance,
				     struct mmal_msg *msg,
				     unsigned int payload_len,
				     struct mmal_msg **msg_out,
				     struct vchi_held_msg *msg_handle_out)
{
	struct mmal_msg_context *msg_context;
	int ret;
	unsigned long timeout;

	/* payload size must not cause message to exceed max size */
	if (payload_len >
	    (MMAL_MSG_MAX_SIZE - sizeof(struct mmal_msg_header))) {
		FUNC5("payload length %d exceeds max:%d\n", payload_len,
		       (int)(MMAL_MSG_MAX_SIZE -
			    sizeof(struct mmal_msg_header)));
		return -EINVAL;
	}

	msg_context = FUNC3(instance);
	if (FUNC1(msg_context))
		return FUNC2(msg_context);

	FUNC4(&msg_context->u.sync.cmplt);

	msg->h.magic = MMAL_MAGIC;
	msg->h.context = msg_context->handle;
	msg->h.status = 0;

	FUNC0(msg, (sizeof(struct mmal_msg_header) + payload_len),
		     ">>> sync message");

	FUNC9(instance->handle);

	ret = FUNC7(instance->handle,
					msg,
					sizeof(struct mmal_msg_header) +
					payload_len);

	FUNC8(instance->handle);

	if (ret) {
		FUNC5("error %d queuing message\n", ret);
		FUNC6(msg_context);
		return ret;
	}

	timeout = FUNC10(&msg_context->u.sync.cmplt,
					      3 * HZ);
	if (timeout == 0) {
		FUNC5("timed out waiting for sync completion\n");
		ret = -ETIME;
		/* todo: what happens if the message arrives after aborting */
		FUNC6(msg_context);
		return ret;
	}

	*msg_out = msg_context->u.sync.msg;
	*msg_handle_out = msg_context->u.sync.msg_handle;
	FUNC6(msg_context);

	return 0;
}