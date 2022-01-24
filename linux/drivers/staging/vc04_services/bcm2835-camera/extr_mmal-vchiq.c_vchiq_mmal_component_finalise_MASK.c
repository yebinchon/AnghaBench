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
struct vchiq_mmal_instance {int /*<<< orphan*/  vchiq_mutex; } ;
struct vchiq_mmal_component {scalar_t__ enabled; } ;

/* Variables and functions */
 int EINTR ; 
 int FUNC0 (struct vchiq_mmal_instance*,struct vchiq_mmal_component*) ; 
 int FUNC1 (struct vchiq_mmal_instance*,struct vchiq_mmal_component*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct vchiq_mmal_instance *instance,
				  struct vchiq_mmal_component *component)
{
	int ret;

	if (FUNC2(&instance->vchiq_mutex))
		return -EINTR;

	if (component->enabled)
		ret = FUNC1(instance, component);

	ret = FUNC0(instance, component);

	FUNC3(&instance->vchiq_mutex);

	return ret;
}