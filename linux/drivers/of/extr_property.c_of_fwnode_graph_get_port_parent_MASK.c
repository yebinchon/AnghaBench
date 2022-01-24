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
struct fwnode_handle {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct fwnode_handle* FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct fwnode_handle*) ; 

__attribute__((used)) static struct fwnode_handle *
FUNC5(struct fwnode_handle *fwnode)
{
	struct device_node *np;

	/* Get the parent of the port */
	np = FUNC2(FUNC4(fwnode));
	if (!np)
		return NULL;

	/* Is this the "ports" node? If not, it's the port parent. */
	if (!FUNC3(np, "ports"))
		return FUNC0(np);

	return FUNC0(FUNC1(np));
}