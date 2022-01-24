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
struct vchiq_service {scalar_t__ srvstate; scalar_t__ handle; scalar_t__ ref_count; } ;
typedef  scalar_t__ VCHIQ_SERVICE_HANDLE_T ;

/* Variables and functions */
 scalar_t__ VCHIQ_SRVSTATE_FREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct vchiq_service* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  service_spinlock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

struct vchiq_service *
FUNC5(VCHIQ_SERVICE_HANDLE_T handle)
{
	struct vchiq_service *service;

	FUNC2(&service_spinlock);
	service = FUNC1(handle);
	if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE) &&
		(service->handle == handle)) {
		FUNC0(service->ref_count == 0);
		service->ref_count++;
	} else
		service = NULL;
	FUNC3(&service_spinlock);

	if (!service)
		FUNC4(vchiq_core_log_level,
			"Invalid service handle 0x%x", handle);

	return service;
}