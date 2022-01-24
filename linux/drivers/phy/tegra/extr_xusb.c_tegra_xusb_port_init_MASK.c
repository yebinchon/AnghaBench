#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parent; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * type; } ;
struct tegra_xusb_port {unsigned int index; TYPE_1__ dev; struct tegra_xusb_padctl* padctl; int /*<<< orphan*/  list; } ;
struct tegra_xusb_padctl {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,char*,char const*,unsigned int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  tegra_xusb_port_type ; 

__attribute__((used)) static int FUNC6(struct tegra_xusb_port *port,
				struct tegra_xusb_padctl *padctl,
				struct device_node *np,
				const char *name,
				unsigned int index)
{
	int err;

	FUNC0(&port->list);
	port->padctl = padctl;
	port->index = index;

	FUNC3(&port->dev);
	port->dev.type = &tegra_xusb_port_type;
	port->dev.of_node = FUNC5(np);
	port->dev.parent = padctl->dev;

	err = FUNC1(&port->dev, "%s-%u", name, index);
	if (err < 0)
		goto unregister;

	err = FUNC2(&port->dev);
	if (err < 0)
		goto unregister;

	return 0;

unregister:
	FUNC4(&port->dev);
	return err;
}