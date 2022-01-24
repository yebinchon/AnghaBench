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
struct vchiq_mmal_port {int /*<<< orphan*/  slock; int /*<<< orphan*/  buffers; } ;
struct vchiq_mmal_instance {int dummy; } ;
struct mmal_buffer {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct vchiq_mmal_instance*,struct vchiq_mmal_port*,struct mmal_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct vchiq_mmal_instance *instance,
			     struct vchiq_mmal_port *port,
			     struct mmal_buffer *buffer)
{
	unsigned long flags = 0;
	int ret;

	ret = FUNC0(instance, port, buffer);
	if (ret == -EINVAL) {
		/* Port is disabled. Queue for when it is enabled. */
		FUNC2(&port->slock, flags);
		FUNC1(&buffer->list, &port->buffers);
		FUNC3(&port->slock, flags);
	}

	return 0;
}