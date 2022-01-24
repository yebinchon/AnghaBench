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
struct of_device_id {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct of_device_id* FUNC0 (struct of_device_id const*,struct device_node const*) ; 
 int /*<<< orphan*/  devtree_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

const struct of_device_id *FUNC3(const struct of_device_id *matches,
					 const struct device_node *node)
{
	const struct of_device_id *match;
	unsigned long flags;

	FUNC1(&devtree_lock, flags);
	match = FUNC0(matches, node);
	FUNC2(&devtree_lock, flags);
	return match;
}