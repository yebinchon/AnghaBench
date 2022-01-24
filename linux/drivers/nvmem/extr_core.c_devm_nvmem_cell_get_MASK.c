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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct nvmem_cell* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct nvmem_cell*) ; 
 int /*<<< orphan*/  devm_nvmem_cell_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct nvmem_cell**) ; 
 struct nvmem_cell** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvmem_cell**) ; 
 struct nvmem_cell* FUNC5 (struct device*,char const*) ; 

struct nvmem_cell *FUNC6(struct device *dev, const char *id)
{
	struct nvmem_cell **ptr, *cell;

	ptr = FUNC3(devm_nvmem_cell_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	cell = FUNC5(dev, id);
	if (!FUNC1(cell)) {
		*ptr = cell;
		FUNC2(dev, ptr);
	} else {
		FUNC4(ptr);
	}

	return cell;
}