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
struct nvmem_device {int dummy; } ;
struct device {scalar_t__ of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (struct nvmem_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmem_device*) ; 
 struct nvmem_device* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 struct nvmem_device* FUNC3 (scalar_t__,char const*) ; 

struct nvmem_device *FUNC4(struct device *dev, const char *dev_name)
{
	if (dev->of_node) { /* try dt first */
		struct nvmem_device *nvmem;

		nvmem = FUNC3(dev->of_node, dev_name);

		if (!FUNC0(nvmem) || FUNC1(nvmem) == -EPROBE_DEFER)
			return nvmem;

	}

	return FUNC2(NULL, dev_name);
}