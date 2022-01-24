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
struct mtk_pinctrl {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PIN_CONFIG_INPUT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_pinctrl*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mtk_pinctrl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct pinctrl_dev*,unsigned int,int) ; 
 struct mtk_pinctrl* FUNC4 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctldev,
				    struct pinctrl_gpio_range *range,
				    unsigned offset)
{
	int muxval;
	struct mtk_pinctrl *pctl = FUNC4(pctldev);

	muxval = FUNC2(pctl, offset);

	if (muxval < 0) {
		FUNC0(pctl->dev, "invalid gpio pin %d.\n", offset);
		return -EINVAL;
	}

	FUNC3(pctldev, offset, muxval);
	FUNC1(pctl, offset, 1, PIN_CONFIG_INPUT_ENABLE);

	return 0;
}