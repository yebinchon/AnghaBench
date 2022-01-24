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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 char* FUNC0 (struct nvmem_cell*) ; 
 scalar_t__ FUNC1 (struct nvmem_cell*) ; 
 struct nvmem_cell* FUNC2 (struct device*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvmem_cell*) ; 
 char* FUNC4 (struct nvmem_cell*,int /*<<< orphan*/ *) ; 

char *FUNC5(struct device *dev, const char *cname)
{
	struct nvmem_cell *cell;
	ssize_t data;
	char *ret;

	cell = FUNC2(dev, cname);
	if (FUNC1(cell))
		return FUNC0(cell);

	ret = FUNC4(cell, &data);
	FUNC3(cell);

	return ret;
}