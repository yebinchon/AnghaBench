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
struct vchiq_mmal_port {int dummy; } ;
struct vchiq_mmal_instance {int /*<<< orphan*/  vchiq_mutex; } ;

/* Variables and functions */
 int EINTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vchiq_mmal_instance*,struct vchiq_mmal_port*) ; 
 int FUNC3 (struct vchiq_mmal_instance*,struct vchiq_mmal_port*) ; 

int FUNC4(struct vchiq_mmal_instance *instance,
			       struct vchiq_mmal_port *port)
{
	int ret;

	if (FUNC0(&instance->vchiq_mutex))
		return -EINTR;

	ret = FUNC3(instance, port);
	if (ret)
		goto release_unlock;

	/* read what has actually been set */
	ret = FUNC2(instance, port);

release_unlock:
	FUNC1(&instance->vchiq_mutex);

	return ret;
}