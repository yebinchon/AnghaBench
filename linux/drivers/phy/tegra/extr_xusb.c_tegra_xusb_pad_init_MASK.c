#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tegra_xusb_padctl {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {struct device_node* of_node; int /*<<< orphan*/ * type; int /*<<< orphan*/  parent; } ;
struct tegra_xusb_pad {TYPE_2__ dev; TYPE_1__* soc; struct tegra_xusb_padctl* padctl; int /*<<< orphan*/  list; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  tegra_xusb_pad_type ; 

int FUNC5(struct tegra_xusb_pad *pad,
			struct tegra_xusb_padctl *padctl,
			struct device_node *np)
{
	int err;

	FUNC3(&pad->dev);
	FUNC0(&pad->list);
	pad->dev.parent = padctl->dev;
	pad->dev.type = &tegra_xusb_pad_type;
	pad->dev.of_node = np;
	pad->padctl = padctl;

	err = FUNC1(&pad->dev, "%s", pad->soc->name);
	if (err < 0)
		goto unregister;

	err = FUNC2(&pad->dev);
	if (err < 0)
		goto unregister;

	return 0;

unregister:
	FUNC4(&pad->dev);
	return err;
}