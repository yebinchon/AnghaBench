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
 int FUNC0 (struct device_node const*) ; 
 int /*<<< orphan*/  devtree_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC3(const struct device_node *device)
{
	unsigned long flags;
	bool res;

	FUNC1(&devtree_lock, flags);
	res = FUNC0(device);
	FUNC2(&devtree_lock, flags);
	return res;

}