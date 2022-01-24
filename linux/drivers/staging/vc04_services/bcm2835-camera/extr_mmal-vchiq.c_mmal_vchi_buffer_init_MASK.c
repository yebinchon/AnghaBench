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
struct vchiq_mmal_instance {int dummy; } ;
struct mmal_msg_context {int dummy; } ;
struct mmal_buffer {struct mmal_msg_context* msg_context; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mmal_msg_context*) ; 
 int FUNC1 (struct mmal_msg_context*) ; 
 struct mmal_msg_context* FUNC2 (struct vchiq_mmal_instance*) ; 

int FUNC3(struct vchiq_mmal_instance *instance,
			  struct mmal_buffer *buf)
{
	struct mmal_msg_context *msg_context = FUNC2(instance);

	if (FUNC0(msg_context))
		return (FUNC1(msg_context));

	buf->msg_context = msg_context;
	return 0;
}