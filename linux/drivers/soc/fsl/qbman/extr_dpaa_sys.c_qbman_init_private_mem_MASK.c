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
struct reserved_mem {size_t base; size_t size; } ;
struct property {int length; int /*<<< orphan*/  name; int /*<<< orphan*/ * value; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
typedef  size_t dma_addr_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int FUNC5 (struct device_node*,struct property*) ; 
 struct property* FUNC6 (struct device_node*,char*,int*) ; 
 struct device_node* FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 struct reserved_mem* FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (size_t) ; 

int FUNC10(struct device *dev, int idx, dma_addr_t *addr,
				size_t *size)
{
	struct device_node *mem_node;
	struct reserved_mem *rmem;
	struct property *prop;
	int len, err;
	__be32 *res_array;

	mem_node = FUNC7(dev->of_node, "memory-region", idx);
	if (!mem_node) {
		FUNC1(dev, "No memory-region found for index %d\n", idx);
		return -ENODEV;
	}

	rmem = FUNC8(mem_node);
	if (!rmem) {
		FUNC1(dev, "of_reserved_mem_lookup() returned NULL\n");
		return -ENODEV;
	}
	*addr = rmem->base;
	*size = rmem->size;

	/*
	 * Check if the reg property exists - if not insert the node
	 * so upon kexec() the same memory region address will be preserved.
	 * This is needed because QBMan HW does not allow the base address/
	 * size to be modified once set.
	 */
	prop = FUNC6(mem_node, "reg", &len);
	if (!prop) {
		prop = FUNC3(dev, sizeof(*prop), GFP_KERNEL);
		if (!prop)
			return -ENOMEM;
		prop->value = res_array = FUNC3(dev, sizeof(__be32) * 4,
						       GFP_KERNEL);
		if (!prop->value)
			return -ENOMEM;
		res_array[0] = FUNC0(FUNC9(*addr));
		res_array[1] = FUNC0(FUNC4(*addr));
		res_array[2] = FUNC0(FUNC9(*size));
		res_array[3] = FUNC0(FUNC4(*size));
		prop->length = sizeof(__be32) * 4;
		prop->name = FUNC2(dev, "reg", GFP_KERNEL);
		if (!prop->name)
			return -ENOMEM;
		err = FUNC5(mem_node, prop);
		if (err)
			return err;
	}

	return 0;
}