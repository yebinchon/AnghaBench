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
struct shim_service {int /*<<< orphan*/  handle; } ;
typedef  int int32_t ;
typedef  scalar_t__ VCHI_SERVICE_HANDLE_T ;
typedef  scalar_t__ VCHIQ_STATUS_T ;

/* Variables and functions */
 scalar_t__ VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct shim_service*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 

int32_t FUNC3(const VCHI_SERVICE_HANDLE_T handle)
{
	int32_t ret = -1;
	struct shim_service *service = (struct shim_service *)handle;

	if (service) {
		VCHIQ_STATUS_T status = FUNC1(service->handle);
		if (status == VCHIQ_SUCCESS)
			FUNC0(service);

		ret = FUNC2(status);
	}
	return ret;
}