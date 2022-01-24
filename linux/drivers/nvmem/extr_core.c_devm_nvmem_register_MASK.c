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
struct nvmem_config {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct nvmem_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct nvmem_device*) ; 
 int /*<<< orphan*/  devm_nvmem_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct nvmem_device**) ; 
 struct nvmem_device** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvmem_device**) ; 
 struct nvmem_device* FUNC5 (struct nvmem_config const*) ; 

struct nvmem_device *FUNC6(struct device *dev,
					 const struct nvmem_config *config)
{
	struct nvmem_device **ptr, *nvmem;

	ptr = FUNC3(devm_nvmem_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	nvmem = FUNC5(config);

	if (!FUNC1(nvmem)) {
		*ptr = nvmem;
		FUNC2(dev, ptr);
	} else {
		FUNC4(ptr);
	}

	return nvmem;
}