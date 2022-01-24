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
struct vchiq_service {int client_id; } ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_T ;

/* Variables and functions */
 struct vchiq_service* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vchiq_service*) ; 

int
FUNC2(VCHIQ_SERVICE_HANDLE_T handle)
{
	struct vchiq_service *service = FUNC0(handle);
	int id;

	id = service ? service->client_id : 0;
	if (service)
		FUNC1(service);

	return id;
}