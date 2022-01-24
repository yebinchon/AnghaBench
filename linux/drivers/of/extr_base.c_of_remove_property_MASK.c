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
struct property {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  OF_RECONFIG_REMOVE_PROPERTY ; 
 int FUNC0 (struct device_node*,struct property*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,struct property*) ; 
 int /*<<< orphan*/  devtree_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct device_node*,struct property*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct device_node *np, struct property *prop)
{
	unsigned long flags;
	int rc;

	if (!prop)
		return -ENODEV;

	FUNC2(&of_mutex);

	FUNC5(&devtree_lock, flags);
	rc = FUNC0(np, prop);
	FUNC6(&devtree_lock, flags);

	if (!rc)
		FUNC1(np, prop);

	FUNC3(&of_mutex);

	if (!rc)
		FUNC4(OF_RECONFIG_REMOVE_PROPERTY, np, prop, NULL);

	return rc;
}