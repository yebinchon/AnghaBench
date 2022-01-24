#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  list; int /*<<< orphan*/  lane; TYPE_4__* ops; } ;
struct tegra_xusb_usb2_port {TYPE_5__ base; } ;
struct tegra_xusb_padctl {int /*<<< orphan*/  ports; TYPE_3__* soc; int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* map ) (TYPE_5__*) ;} ;
struct TYPE_8__ {TYPE_4__* ops; } ;
struct TYPE_9__ {TYPE_1__ usb2; } ;
struct TYPE_10__ {TYPE_2__ ports; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct tegra_xusb_usb2_port* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 struct device_node* FUNC7 (struct tegra_xusb_padctl*,char*,unsigned int) ; 
 int FUNC8 (TYPE_5__*,struct tegra_xusb_padctl*,struct device_node*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int FUNC10 (struct tegra_xusb_usb2_port*) ; 

__attribute__((used)) static int FUNC11(struct tegra_xusb_padctl *padctl,
				    unsigned int index)
{
	struct tegra_xusb_usb2_port *usb2;
	struct device_node *np;
	int err = 0;

	/*
	 * USB2 ports don't require additional properties, but if the port is
	 * marked as disabled there is no reason to register it.
	 */
	np = FUNC7(padctl, "usb2", index);
	if (!np || !FUNC4(np))
		goto out;

	usb2 = FUNC2(padctl->dev, sizeof(*usb2), GFP_KERNEL);
	if (!usb2) {
		err = -ENOMEM;
		goto out;
	}

	err = FUNC8(&usb2->base, padctl, np, "usb2", index);
	if (err < 0)
		goto out;

	usb2->base.ops = padctl->soc->ports.usb2.ops;

	usb2->base.lane = usb2->base.ops->map(&usb2->base);
	if (FUNC0(usb2->base.lane)) {
		err = FUNC1(usb2->base.lane);
		goto out;
	}

	err = FUNC10(usb2);
	if (err < 0) {
		FUNC9(&usb2->base);
		goto out;
	}

	FUNC3(&usb2->base.list, &padctl->ports);

out:
	FUNC5(np);
	return err;
}