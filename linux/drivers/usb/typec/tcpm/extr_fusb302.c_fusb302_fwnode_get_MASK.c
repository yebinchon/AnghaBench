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
struct device {int dummy; } ;

/* Variables and functions */
 struct fwnode_handle* FUNC0 (struct device*,char*) ; 
 struct fwnode_handle* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  port_props ; 

__attribute__((used)) static struct fwnode_handle *FUNC2(struct device *dev)
{
	struct fwnode_handle *fwnode;

	fwnode = FUNC0(dev, "connector");
	if (!fwnode)
		fwnode = FUNC1(port_props, NULL);

	return fwnode;
}