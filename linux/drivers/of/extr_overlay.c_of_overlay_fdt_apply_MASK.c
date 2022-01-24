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
typedef  int u32 ;
struct fdt_header {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void const*) ; 
 int FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (void const*) ; 
 void* FUNC3 (void const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void const*,int /*<<< orphan*/ *,struct device_node**) ; 
 int FUNC5 (void const*,struct device_node*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(const void *overlay_fdt, u32 overlay_fdt_size,
			 int *ovcs_id)
{
	const void *new_fdt;
	int ret;
	u32 size;
	struct device_node *overlay_root;

	*ovcs_id = 0;
	ret = 0;

	if (overlay_fdt_size < sizeof(struct fdt_header) ||
	    FUNC0(overlay_fdt)) {
		FUNC6("Invalid overlay_fdt header\n");
		return -EINVAL;
	}

	size = FUNC1(overlay_fdt);
	if (overlay_fdt_size < size)
		return -EINVAL;

	/*
	 * Must create permanent copy of FDT because of_fdt_unflatten_tree()
	 * will create pointers to the passed in FDT in the unflattened tree.
	 */
	new_fdt = FUNC3(overlay_fdt, size, GFP_KERNEL);
	if (!new_fdt)
		return -ENOMEM;

	FUNC4(new_fdt, NULL, &overlay_root);
	if (!overlay_root) {
		FUNC6("unable to unflatten overlay_fdt\n");
		ret = -EINVAL;
		goto out_free_new_fdt;
	}

	ret = FUNC5(new_fdt, overlay_root, ovcs_id);
	if (ret < 0) {
		/*
		 * new_fdt and overlay_root now belong to the overlay
		 * changeset.
		 * overlay changeset code is responsible for freeing them.
		 */
		goto out;
	}

	return 0;


out_free_new_fdt:
	FUNC2(new_fdt);

out:
	return ret;
}