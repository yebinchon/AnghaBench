#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fusb302_chip {int gpio_int_n; int gpio_int_n_irq; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int FUNC1 (TYPE_1__*,int,char*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct device_node*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct fusb302_chip *chip)
{
	struct device_node *node;
	int ret = 0;

	node = chip->dev->of_node;
	chip->gpio_int_n = FUNC5(node, "fcs,int_n", 0);
	if (!FUNC3(chip->gpio_int_n)) {
		ret = chip->gpio_int_n;
		FUNC0(chip->dev, "cannot get named GPIO Int_N, ret=%d", ret);
		return ret;
	}
	ret = FUNC1(chip->dev, chip->gpio_int_n, "fcs,int_n");
	if (ret < 0) {
		FUNC0(chip->dev, "cannot request GPIO Int_N, ret=%d", ret);
		return ret;
	}
	ret = FUNC2(chip->gpio_int_n);
	if (ret < 0) {
		FUNC0(chip->dev,
			"cannot set GPIO Int_N to input, ret=%d", ret);
		return ret;
	}
	ret = FUNC4(chip->gpio_int_n);
	if (ret < 0) {
		FUNC0(chip->dev,
			"cannot request IRQ for GPIO Int_N, ret=%d", ret);
		return ret;
	}
	chip->gpio_int_n_irq = ret;
	return 0;
}