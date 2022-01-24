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
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct dwc3_keystone {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3_keystone*) ; 
 int /*<<< orphan*/  kdwc3_remove_core ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 
 struct dwc3_keystone* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct dwc3_keystone *kdwc = FUNC3(pdev);
	struct device_node *node = pdev->dev.of_node;

	if (!FUNC2(node, "ti,am654-dwc3"))
		FUNC1(kdwc);

	FUNC0(&pdev->dev, NULL, kdwc3_remove_core);
	FUNC6(kdwc->dev);
	FUNC5(kdwc->dev);

	FUNC4(pdev, NULL);

	return 0;
}