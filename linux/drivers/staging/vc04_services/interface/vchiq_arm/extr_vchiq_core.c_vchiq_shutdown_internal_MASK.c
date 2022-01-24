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
struct vchiq_state {int dummy; } ;
struct vchiq_service {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  VCHIQ_STATUS_T ;
typedef  int /*<<< orphan*/  VCHIQ_INSTANCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCHIQ_SUCCESS ; 
 struct vchiq_service* FUNC0 (struct vchiq_state*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct vchiq_service*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

VCHIQ_STATUS_T
FUNC3(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
{
	struct vchiq_service *service;
	int i;

	/* Find all services registered to this client and enable them. */
	i = 0;
	while ((service = FUNC0(state, instance,
		&i)) !=	NULL) {
		(void)FUNC2(service->handle);
		FUNC1(service);
	}

	return VCHIQ_SUCCESS;
}