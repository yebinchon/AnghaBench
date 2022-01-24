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
struct nvmem_cell {int dummy; } ;
struct device {scalar_t__ of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct nvmem_cell* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmem_cell*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvmem_cell*) ; 
 struct nvmem_cell* FUNC3 (struct device*,char const*) ; 
 struct nvmem_cell* FUNC4 (scalar_t__,char const*) ; 

struct nvmem_cell *FUNC5(struct device *dev, const char *id)
{
	struct nvmem_cell *cell;

	if (dev->of_node) { /* try dt first */
		cell = FUNC4(dev->of_node, id);
		if (!FUNC1(cell) || FUNC2(cell) == -EPROBE_DEFER)
			return cell;
	}

	/* NULL cell id only allowed for device tree; invalid otherwise */
	if (!id)
		return FUNC0(-EINVAL);

	return FUNC3(dev, id);
}