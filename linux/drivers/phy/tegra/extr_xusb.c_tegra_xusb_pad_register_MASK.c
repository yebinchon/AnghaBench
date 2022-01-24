#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct tegra_xusb_pad {struct tegra_xusb_lane** lanes; struct tegra_xusb_lane* provider; TYPE_4__ dev; TYPE_3__* padctl; TYPE_2__* ops; TYPE_1__* soc; } ;
struct tegra_xusb_lane {int /*<<< orphan*/  list; } ;
struct phy_ops {int dummy; } ;
struct phy {int dummy; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  lane ;
struct TYPE_9__ {int /*<<< orphan*/  lanes; } ;
struct TYPE_8__ {struct tegra_xusb_lane* (* probe ) (struct tegra_xusb_pad*,struct device_node*,unsigned int) ;} ;
struct TYPE_7__ {unsigned int num_lanes; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct tegra_xusb_lane*) ; 
 int FUNC1 (struct tegra_xusb_lane*) ; 
 struct tegra_xusb_lane** FUNC2 (TYPE_4__*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct device_node* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 struct tegra_xusb_lane* FUNC7 (TYPE_4__*,struct device_node*,int /*<<< orphan*/ ) ; 
 struct tegra_xusb_lane* FUNC8 (TYPE_4__*,struct device_node*,struct phy_ops const*) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_xusb_lane*) ; 
 int /*<<< orphan*/  FUNC10 (struct tegra_xusb_lane*,struct tegra_xusb_lane*) ; 
 struct tegra_xusb_lane* FUNC11 (struct tegra_xusb_pad*,struct device_node*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct tegra_xusb_lane*) ; 
 struct device_node* FUNC13 (struct tegra_xusb_pad*,unsigned int) ; 
 int /*<<< orphan*/  tegra_xusb_pad_of_xlate ; 

int FUNC14(struct tegra_xusb_pad *pad,
			    const struct phy_ops *ops)
{
	struct device_node *children;
	struct phy *lane;
	unsigned int i;
	int err;

	children = FUNC5(pad->dev.of_node, "lanes");
	if (!children)
		return -ENODEV;

	pad->lanes = FUNC2(&pad->dev, pad->soc->num_lanes, sizeof(lane),
				  GFP_KERNEL);
	if (!pad->lanes) {
		FUNC6(children);
		return -ENOMEM;
	}

	for (i = 0; i < pad->soc->num_lanes; i++) {
		struct device_node *np = FUNC13(pad, i);
		struct tegra_xusb_lane *lane;

		/* skip disabled lanes */
		if (!np || !FUNC4(np)) {
			FUNC6(np);
			continue;
		}

		pad->lanes[i] = FUNC8(&pad->dev, np, ops);
		if (FUNC0(pad->lanes[i])) {
			err = FUNC1(pad->lanes[i]);
			FUNC6(np);
			goto remove;
		}

		lane = pad->ops->probe(pad, np, i);
		if (FUNC0(lane)) {
			FUNC9(pad->lanes[i]);
			err = FUNC1(lane);
			goto remove;
		}

		FUNC3(&lane->list, &pad->padctl->lanes);
		FUNC10(pad->lanes[i], lane);
	}

	pad->provider = FUNC7(&pad->dev, children,
						      tegra_xusb_pad_of_xlate);
	if (FUNC0(pad->provider)) {
		err = FUNC1(pad->provider);
		goto remove;
	}

	return 0;

remove:
	while (i--)
		FUNC12(pad->lanes[i]);

	FUNC6(children);

	return err;
}