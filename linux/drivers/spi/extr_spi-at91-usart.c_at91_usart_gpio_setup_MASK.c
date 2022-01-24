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
struct TYPE_5__ {TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIOF_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct device_node*,char*,int) ; 
 int FUNC4 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.parent->of_node;
	int i;
	int ret;
	int nb;

	if (!np)
		return -EINVAL;

	nb = FUNC4(np, "cs-gpios");
	for (i = 0; i < nb; i++) {
		int cs_gpio = FUNC3(np, "cs-gpios", i);

		if (cs_gpio < 0)
			return cs_gpio;

		if (FUNC2(cs_gpio)) {
			ret = FUNC1(&pdev->dev, cs_gpio,
						    GPIOF_DIR_OUT,
						    FUNC0(&pdev->dev));
			if (ret)
				return ret;
		}
	}

	return 0;
}