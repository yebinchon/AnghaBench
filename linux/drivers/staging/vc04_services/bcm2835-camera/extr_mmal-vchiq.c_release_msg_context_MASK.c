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
struct mmal_msg_context {int /*<<< orphan*/  handle; struct vchiq_mmal_instance* instance; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmal_msg_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct mmal_msg_context *msg_context)
{
	struct vchiq_mmal_instance *instance = msg_context->instance;

	FUNC2(&instance->context_map_lock);
	FUNC0(&instance->context_map, msg_context->handle);
	FUNC3(&instance->context_map_lock);
	FUNC1(msg_context);
}