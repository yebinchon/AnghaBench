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
struct tegra_xusb_usb3_port {TYPE_5__ base; } ;
struct tegra_xusb_padctl {int /*<<< orphan*/  ports; TYPE_3__* soc; int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* map ) (TYPE_5__*) ;} ;
struct TYPE_8__ {TYPE_4__* ops; } ;
struct TYPE_9__ {TYPE_1__ usb3; } ;
struct TYPE_10__ {TYPE_2__ ports; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct tegra_xusb_usb3_port* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 struct device_node* FUNC7 (struct tegra_xusb_padctl*,char*,unsigned int) ; 
 int FUNC8 (TYPE_5__*,struct tegra_xusb_padctl*,struct device_node*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int FUNC10 (struct tegra_xusb_usb3_port*) ; 

__attribute__((used)) static int FUNC11(struct tegra_xusb_padctl *padctl,
				    unsigned int index)
{
	struct tegra_xusb_usb3_port *usb3;
	struct device_node *np;
	int err = 0;

	/*
	 * If there is no supplemental configuration in the device tree the
	 * port is unusable. But it is valid to configure only a single port,
	 * hence return 0 instead of an error to allow ports to be optional.
	 */
	np = FUNC7(padctl, "usb3", index);
	if (!np || !FUNC4(np))
		goto out;

	usb3 = FUNC2(padctl->dev, sizeof(*usb3), GFP_KERNEL);
	if (!usb3) {
		err = -ENOMEM;
		goto out;
	}

	err = FUNC8(&usb3->base, padctl, np, "usb3", index);
	if (err < 0)
		goto out;

	usb3->base.ops = padctl->soc->ports.usb3.ops;

	usb3->base.lane = usb3->base.ops->map(&usb3->base);
	if (FUNC0(usb3->base.lane)) {
		err = FUNC1(usb3->base.lane);
		goto out;
	}

	err = FUNC10(usb3);
	if (err < 0) {
		FUNC9(&usb3->base);
		goto out;
	}

	FUNC3(&usb3->base.list, &padctl->ports);

out:
	FUNC5(np);
	return err;
}