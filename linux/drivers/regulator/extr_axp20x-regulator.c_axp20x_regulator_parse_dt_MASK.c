#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int FUNC0 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 struct device_node* FUNC3 (struct device_node*,char*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device_node *np, *regulators;
	int ret;
	u32 dcdcfreq = 0;

	np = FUNC4(pdev->dev.parent->of_node);
	if (!np)
		return 0;

	regulators = FUNC3(np, "regulators");
	if (!regulators) {
		FUNC2(&pdev->dev, "regulators node not found\n");
	} else {
		FUNC6(regulators, "x-powers,dcdc-freq", &dcdcfreq);
		ret = FUNC0(pdev, dcdcfreq);
		if (ret < 0) {
			FUNC1(&pdev->dev, "Error setting dcdc frequency: %d\n", ret);
			return ret;
		}

		FUNC5(regulators);
	}

	return 0;
}