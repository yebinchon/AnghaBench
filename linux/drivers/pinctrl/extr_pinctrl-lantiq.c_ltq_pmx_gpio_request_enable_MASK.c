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
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct ltq_pinmux_info {int (* apply_mux ) (struct pinctrl_dev*,int,int) ;int /*<<< orphan*/  dev; int /*<<< orphan*/ * mfp; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct ltq_pinmux_info*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ltq_pinmux_info* FUNC3 (struct pinctrl_dev*) ; 
 int FUNC4 (struct pinctrl_dev*,int,int) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctrldev,
				struct pinctrl_gpio_range *range,
				unsigned pin)
{
	struct ltq_pinmux_info *info = FUNC3(pctrldev);
	int mfp = FUNC1(info, pin);
	int pin_func;

	if (mfp < 0) {
		FUNC0(info->dev, "could not find mfp for pin %d\n", pin);
		return -EINVAL;
	}

	pin_func = FUNC2(&info->mfp[mfp], 0);
	if (pin_func < 0) {
		FUNC0(info->dev, "No GPIO function on pin%d\n", mfp);
		return -EINVAL;
	}

	return info->apply_mux(pctrldev, mfp, pin_func);
}