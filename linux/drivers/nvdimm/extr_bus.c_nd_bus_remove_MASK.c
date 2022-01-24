#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct nvdimm_bus {TYPE_1__ badrange; int /*<<< orphan*/  dev; int /*<<< orphan*/  ioctl_active; int /*<<< orphan*/  wait; int /*<<< orphan*/  list; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  child_unregister ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct nvdimm_bus*) ; 
 int /*<<< orphan*/  nvdimm_bus_list_mutex ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct nvdimm_bus* FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct device *dev)
{
	struct nvdimm_bus *nvdimm_bus = FUNC10(dev);

	FUNC4(&nvdimm_bus_list_mutex);
	FUNC3(&nvdimm_bus->list);
	FUNC5(&nvdimm_bus_list_mutex);

	FUNC11(nvdimm_bus->wait,
			FUNC0(&nvdimm_bus->ioctl_active) == 0);

	FUNC6();
	FUNC1(&nvdimm_bus->dev, NULL, child_unregister);

	FUNC8(&nvdimm_bus->badrange.lock);
	FUNC2(&nvdimm_bus->badrange.list);
	FUNC9(&nvdimm_bus->badrange.lock);

	FUNC7(nvdimm_bus);

	return 0;
}