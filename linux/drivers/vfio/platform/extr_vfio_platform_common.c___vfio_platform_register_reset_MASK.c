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
struct vfio_platform_reset_node {int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int /*<<< orphan*/  driver_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reset_list ; 

void FUNC3(struct vfio_platform_reset_node *node)
{
	FUNC1(&driver_lock);
	FUNC0(&node->link, &reset_list);
	FUNC2(&driver_lock);
}