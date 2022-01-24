#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tee_client_device_id {int /*<<< orphan*/  uuid; } ;
struct TYPE_3__ {int /*<<< orphan*/  uuid; } ;
struct tee_client_device {TYPE_1__ id; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct tee_client_device_id* id_table; } ;

/* Variables and functions */
 struct tee_client_device* FUNC0 (struct device*) ; 
 TYPE_2__* FUNC1 (struct device_driver*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
				   struct device_driver *drv)
{
	const struct tee_client_device_id *id_table;
	struct tee_client_device *tee_device;

	id_table = FUNC1(drv)->id_table;
	tee_device = FUNC0(dev);

	while (!FUNC3(&id_table->uuid)) {
		if (FUNC2(&tee_device->id.uuid, &id_table->uuid))
			return 1;
		id_table++;
	}

	return 0;
}