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
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char const*,...) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 

__attribute__((used)) static struct device_node *FUNC4(struct device *dev, const char *supply)
{
	struct device_node *regnode = NULL;
	char prop_name[32]; /* 32 is max size of property name */

	FUNC0(dev, "Looking up %s-supply from device tree\n", supply);

	FUNC3(prop_name, 32, "%s-supply", supply);
	regnode = FUNC2(dev->of_node, prop_name, 0);

	if (!regnode) {
		regnode = FUNC1(dev->of_node, prop_name);
		if (regnode)
			return regnode;

		FUNC0(dev, "Looking up %s property in node %pOF failed\n",
				prop_name, dev->of_node);
		return NULL;
	}
	return regnode;
}