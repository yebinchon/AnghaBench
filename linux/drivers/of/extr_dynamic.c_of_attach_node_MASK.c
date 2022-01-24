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
struct of_reconfig_data {struct device_node* dn; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  rd ;

/* Variables and functions */
 int /*<<< orphan*/  OF_RECONFIG_ATTACH_NODE ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  devtree_lock ; 
 int /*<<< orphan*/  FUNC2 (struct of_reconfig_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct of_reconfig_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(struct device_node *np)
{
	struct of_reconfig_data rd;
	unsigned long flags;

	FUNC2(&rd, 0, sizeof(rd));
	rd.dn = np;

	FUNC3(&of_mutex);
	FUNC6(&devtree_lock, flags);
	FUNC0(np);
	FUNC7(&devtree_lock, flags);

	FUNC1(np);
	FUNC4(&of_mutex);

	FUNC5(OF_RECONFIG_ATTACH_NODE, &rd);

	return 0;
}