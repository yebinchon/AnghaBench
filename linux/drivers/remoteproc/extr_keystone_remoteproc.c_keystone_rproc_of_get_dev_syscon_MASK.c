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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct keystone_rproc {int /*<<< orphan*/  boot_offset; int /*<<< orphan*/  dev_ctrl; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*) ; 
 scalar_t__ FUNC4 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev,
					    struct keystone_rproc *ksproc)
{
	struct device_node *np = pdev->dev.of_node;
	struct device *dev = &pdev->dev;
	int ret;

	if (!FUNC3(np, "ti,syscon-dev")) {
		FUNC2(dev, "ti,syscon-dev property is absent\n");
		return -EINVAL;
	}

	ksproc->dev_ctrl =
		FUNC5(np, "ti,syscon-dev");
	if (FUNC0(ksproc->dev_ctrl)) {
		ret = FUNC1(ksproc->dev_ctrl);
		return ret;
	}

	if (FUNC4(np, "ti,syscon-dev", 1,
				       &ksproc->boot_offset)) {
		FUNC2(dev, "couldn't read the boot register offset\n");
		return -EINVAL;
	}

	return 0;
}