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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  devm_nvmem_cell_match ; 
 int /*<<< orphan*/  devm_nvmem_cell_release ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nvmem_cell*) ; 

void FUNC2(struct device *dev, struct nvmem_cell *cell)
{
	int ret;

	ret = FUNC1(dev, devm_nvmem_cell_release,
				devm_nvmem_cell_match, cell);

	FUNC0(ret);
}