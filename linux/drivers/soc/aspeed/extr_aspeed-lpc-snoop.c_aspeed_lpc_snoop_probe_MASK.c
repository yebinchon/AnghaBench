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
typedef  int /*<<< orphan*/  u32 ;
struct device {int /*<<< orphan*/  of_node; TYPE_1__* parent; } ;
struct platform_device {struct device dev; } ;
struct aspeed_lpc_snoop {int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aspeed_lpc_snoop*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct aspeed_lpc_snoop*,struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct aspeed_lpc_snoop*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct aspeed_lpc_snoop*) ; 
 struct aspeed_lpc_snoop* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct aspeed_lpc_snoop *lpc_snoop;
	struct device *dev;
	u32 port;
	int rc;

	dev = &pdev->dev;

	lpc_snoop = FUNC6(dev, sizeof(*lpc_snoop), GFP_KERNEL);
	if (!lpc_snoop)
		return -ENOMEM;

	lpc_snoop->regmap = FUNC8(
			pdev->dev.parent->of_node);
	if (FUNC0(lpc_snoop->regmap)) {
		FUNC4(dev, "Couldn't get regmap\n");
		return -ENODEV;
	}

	FUNC5(&pdev->dev, lpc_snoop);

	rc = FUNC7(dev->of_node, "snoop-ports", 0, &port);
	if (rc) {
		FUNC4(dev, "no snoop ports configured\n");
		return -ENODEV;
	}

	rc = FUNC3(lpc_snoop, pdev);
	if (rc)
		return rc;

	rc = FUNC2(lpc_snoop, dev, 0, port);
	if (rc)
		return rc;

	/* Configuration of 2nd snoop channel port is optional */
	if (FUNC7(dev->of_node, "snoop-ports",
				       1, &port) == 0) {
		rc = FUNC2(lpc_snoop, dev, 1, port);
		if (rc)
			FUNC1(lpc_snoop, 0);
	}

	return rc;
}