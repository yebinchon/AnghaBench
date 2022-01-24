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
struct vchiq_service {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  VCHIQ_STATUS_T ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCHIQ_ERROR ; 
 struct vchiq_service* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vchiq_service*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vchiq_service*) ; 

VCHIQ_STATUS_T
FUNC3(VCHIQ_SERVICE_HANDLE_T handle)
{
	VCHIQ_STATUS_T ret = VCHIQ_ERROR;
	struct vchiq_service *service = FUNC0(handle);

	if (service) {
		ret = FUNC2(service->state, service);
		FUNC1(service);
	}
	return ret;
}