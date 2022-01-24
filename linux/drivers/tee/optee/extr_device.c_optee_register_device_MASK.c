#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/ * bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  uuid; } ;
struct tee_client_device {TYPE_2__ dev; TYPE_1__ id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct tee_client_device*) ; 
 struct tee_client_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  tee_bus_type ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC6(const uuid_t *device_uuid, u32 device_id)
{
	struct tee_client_device *optee_device = NULL;
	int rc;

	optee_device = FUNC3(sizeof(*optee_device), GFP_KERNEL);
	if (!optee_device)
		return -ENOMEM;

	optee_device->dev.bus = &tee_bus_type;
	FUNC0(&optee_device->dev, "optee-clnt%u", device_id);
	FUNC5(&optee_device->id.uuid, device_uuid);

	rc = FUNC1(&optee_device->dev);
	if (rc) {
		FUNC4("device registration failed, err: %d\n", rc);
		FUNC2(optee_device);
	}

	return rc;
}