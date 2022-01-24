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
struct vchiq_mmal_instance {int /*<<< orphan*/  context_map_lock; int /*<<< orphan*/  context_map; } ;
struct mmal_msg_context {int handle; struct vchiq_mmal_instance* instance; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mmal_msg_context* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ *,struct mmal_msg_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmal_msg_context*) ; 
 struct mmal_msg_context* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mmal_msg_context *
FUNC6(struct vchiq_mmal_instance *instance)
{
	struct mmal_msg_context *msg_context;
	int handle;

	/* todo: should this be allocated from a pool to avoid kzalloc */
	msg_context = FUNC3(sizeof(*msg_context), GFP_KERNEL);

	if (!msg_context)
		return FUNC0(-ENOMEM);

	/* Create an ID that will be passed along with our message so
	 * that when we service the VCHI reply, we can look up what
	 * message is being replied to.
	 */
	FUNC4(&instance->context_map_lock);
	handle = FUNC1(&instance->context_map, msg_context,
			   0, 0, GFP_KERNEL);
	FUNC5(&instance->context_map_lock);

	if (handle < 0) {
		FUNC2(msg_context);
		return FUNC0(handle);
	}

	msg_context->instance = instance;
	msg_context->handle = handle;

	return msg_context;
}