#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  phy; } ;

/* Variables and functions */
 TYPE_2__ hdmi ; 
 int FUNC0 (struct platform_device*,struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct device_node *ep;
	int r;

	ep = FUNC2(node);
	if (!ep)
		return 0;

	r = FUNC0(pdev, ep, &hdmi.phy);
	if (r)
		goto err;

	FUNC1(ep);
	return 0;

err:
	FUNC1(ep);
	return r;
}