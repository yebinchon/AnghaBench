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
typedef  int /*<<< orphan*/  u8 ;
struct nvdimm_bus {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  is_namespace_uuid_busy ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nvdimm_bus* FUNC3 (struct device*) ; 

bool FUNC4(struct device *dev, u8 *uuid)
{
	struct nvdimm_bus *nvdimm_bus = FUNC3(dev);

	if (!nvdimm_bus)
		return false;
	FUNC0(!FUNC2(&nvdimm_bus->dev));
	if (FUNC1(&nvdimm_bus->dev, uuid,
				is_namespace_uuid_busy) != 0)
		return false;
	return true;
}