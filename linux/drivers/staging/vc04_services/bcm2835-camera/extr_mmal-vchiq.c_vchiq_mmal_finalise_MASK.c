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
struct vchiq_mmal_instance {int /*<<< orphan*/  context_map; int /*<<< orphan*/  bulk_scratch; int /*<<< orphan*/  bulk_wq; int /*<<< orphan*/  vchiq_mutex; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vchiq_mmal_instance*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct vchiq_mmal_instance *instance)
{
	int status = 0;

	if (!instance)
		return -EINVAL;

	if (FUNC4(&instance->vchiq_mutex))
		return -EINTR;

	FUNC8(instance->handle);

	status = FUNC7(instance->handle);
	if (status != 0)
		FUNC6("mmal-vchiq: VCHIQ close failed\n");

	FUNC5(&instance->vchiq_mutex);

	FUNC1(instance->bulk_wq);
	FUNC0(instance->bulk_wq);

	FUNC9(instance->bulk_scratch);

	FUNC2(&instance->context_map);

	FUNC3(instance);

	return status;
}