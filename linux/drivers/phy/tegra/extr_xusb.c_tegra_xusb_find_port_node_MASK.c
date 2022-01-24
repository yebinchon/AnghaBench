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
struct tegra_xusb_padctl {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct device_node* FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 

__attribute__((used)) static struct device_node *
FUNC5(struct tegra_xusb_padctl *padctl, const char *type,
			  unsigned int index)
{
	struct device_node *ports, *np;
	char *name;

	ports = FUNC3(padctl->dev->of_node, "ports");
	if (!ports)
		return NULL;

	name = FUNC1(GFP_KERNEL, "%s-%u", type, index);
	if (!name) {
		FUNC4(ports);
		return FUNC0(-ENOMEM);
	}
	np = FUNC3(ports, name);
	FUNC2(name);
	FUNC4(ports);

	return np;
}