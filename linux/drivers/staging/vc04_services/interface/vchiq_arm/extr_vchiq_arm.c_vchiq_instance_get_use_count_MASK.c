#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vchiq_service {scalar_t__ service_use_count; } ;
typedef  TYPE_1__* VCHIQ_INSTANCE_T ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 struct vchiq_service* FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct vchiq_service*) ; 

int
FUNC2(VCHIQ_INSTANCE_T instance)
{
	struct vchiq_service *service;
	int use_count = 0, i;

	i = 0;
	while ((service = FUNC0(instance->state,
		instance, &i)) != NULL) {
		use_count += service->service_use_count;
		FUNC1(service);
	}
	return use_count;
}