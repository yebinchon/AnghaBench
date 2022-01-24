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
struct device_node {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (unsigned long const*,struct device_node*,struct device_node**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  kernel_tree_alloc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_fdt_unflatten_mutex ; 

void *FUNC3(const unsigned long *blob,
			    struct device_node *dad,
			    struct device_node **mynodes)
{
	void *mem;

	FUNC1(&of_fdt_unflatten_mutex);
	mem = FUNC0(blob, dad, mynodes, &kernel_tree_alloc,
				      true);
	FUNC2(&of_fdt_unflatten_mutex);

	return mem;
}