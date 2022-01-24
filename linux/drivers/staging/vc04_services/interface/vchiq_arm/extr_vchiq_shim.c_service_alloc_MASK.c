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
struct shim_service {int /*<<< orphan*/  callback_param; int /*<<< orphan*/  callback; int /*<<< orphan*/  queue; } ;
struct service_creation {int /*<<< orphan*/  callback_param; int /*<<< orphan*/  callback; } ;
typedef  int /*<<< orphan*/  VCHIQ_INSTANCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct shim_service*) ; 
 struct shim_service* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct shim_service *FUNC3(VCHIQ_INSTANCE_T instance,
	struct service_creation *setup)
{
	struct shim_service *service = FUNC1(sizeof(struct shim_service), GFP_KERNEL);

	(void)instance;

	if (service) {
		if (FUNC2(&service->queue, 64)) {
			service->callback = setup->callback;
			service->callback_param = setup->callback_param;
		} else {
			FUNC0(service);
			service = NULL;
		}
	}

	return service;
}