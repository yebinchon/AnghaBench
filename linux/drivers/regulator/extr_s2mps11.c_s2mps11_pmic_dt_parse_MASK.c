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
struct s2mps11_info {scalar_t__ dev_type; } ;
struct TYPE_5__ {TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_regulator_match {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ S2MPS14X ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct device_node*,struct of_regulator_match*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct of_regulator_match*,struct s2mps11_info*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev,
		struct of_regulator_match *rdata, struct s2mps11_info *s2mps11,
		unsigned int rdev_num)
{
	struct device_node *reg_np;

	reg_np = FUNC1(pdev->dev.parent->of_node, "regulators");
	if (!reg_np) {
		FUNC0(&pdev->dev, "could not find regulators sub-node\n");
		return -EINVAL;
	}

	FUNC3(&pdev->dev, reg_np, rdata, rdev_num);
	if (s2mps11->dev_type == S2MPS14X)
		FUNC4(pdev, rdata, s2mps11);

	FUNC2(reg_np);

	return 0;
}