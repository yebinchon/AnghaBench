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
struct nvmem_device {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  dev; int /*<<< orphan*/  owner; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct nvmem_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nvmem_device*) ; 
 struct nvmem_device* FUNC6 (char const*) ; 
 int /*<<< orphan*/  nvmem_mutex ; 
 struct nvmem_device* FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nvmem_device *FUNC10(struct device_node *np,
					       const char *nvmem_name)
{
	struct nvmem_device *nvmem = NULL;

	FUNC3(&nvmem_mutex);
	nvmem = np ? FUNC7(np) : FUNC6(nvmem_name);
	FUNC4(&nvmem_mutex);
	if (!nvmem)
		return FUNC0(-EPROBE_DEFER);

	if (!FUNC9(nvmem->owner)) {
		FUNC1(&nvmem->dev,
			"could not increase module refcount for cell %s\n",
			FUNC5(nvmem));

		FUNC8(&nvmem->dev);
		return FUNC0(-EINVAL);
	}

	FUNC2(&nvmem->refcnt);

	return nvmem;
}