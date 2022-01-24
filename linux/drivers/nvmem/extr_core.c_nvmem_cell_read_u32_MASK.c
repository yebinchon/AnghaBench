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
typedef  int /*<<< orphan*/  u32 ;
typedef  void nvmem_cell ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 void* FUNC4 (struct device*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (void*,size_t*) ; 

int FUNC7(struct device *dev, const char *cell_id, u32 *val)
{
	struct nvmem_cell *cell;
	void *buf;
	size_t len;

	cell = FUNC4(dev, cell_id);
	if (FUNC0(cell))
		return FUNC1(cell);

	buf = FUNC6(cell, &len);
	if (FUNC0(buf)) {
		FUNC5(cell);
		return FUNC1(buf);
	}
	if (len != sizeof(*val)) {
		FUNC2(buf);
		FUNC5(cell);
		return -EINVAL;
	}
	FUNC3(val, buf, sizeof(*val));

	FUNC2(buf);
	FUNC5(cell);
	return 0;
}