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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ns_thermal {int /*<<< orphan*/  tz; int /*<<< orphan*/  pvtmon; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct ns_thermal* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,struct ns_thermal*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_thermal_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct ns_thermal*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct ns_thermal *ns_thermal;

	ns_thermal = FUNC4(dev, sizeof(*ns_thermal), GFP_KERNEL);
	if (!ns_thermal)
		return -ENOMEM;

	ns_thermal->pvtmon = FUNC7(FUNC3(dev), 0);
	if (FUNC2(!ns_thermal->pvtmon))
		return -ENOENT;

	ns_thermal->tz = FUNC5(dev, 0,
							      ns_thermal,
							      &ns_thermal_ops);
	if (FUNC0(ns_thermal->tz)) {
		FUNC6(ns_thermal->pvtmon);
		return FUNC1(ns_thermal->tz);
	}

	FUNC8(pdev, ns_thermal);

	return 0;
}