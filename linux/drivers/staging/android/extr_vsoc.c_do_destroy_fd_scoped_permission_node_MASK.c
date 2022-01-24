#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vsoc_device_region {int dummy; } ;
struct fd_scoped_permission_node {int /*<<< orphan*/  list; int /*<<< orphan*/  permission; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vsoc_device_region*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fd_scoped_permission_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ vsoc_dev ; 

__attribute__((used)) static void
FUNC5(struct vsoc_device_region *owner_region_p,
				     struct fd_scoped_permission_node *node)
{
	if (node) {
		FUNC0(owner_region_p,
						&node->permission);
		FUNC3(&vsoc_dev.mtx);
		FUNC2(&node->list);
		FUNC4(&vsoc_dev.mtx);
		FUNC1(node);
	}
}