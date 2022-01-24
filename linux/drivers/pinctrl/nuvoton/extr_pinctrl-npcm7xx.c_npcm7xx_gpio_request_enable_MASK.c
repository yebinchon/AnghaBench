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
struct pinctrl_gpio_range {int /*<<< orphan*/  gc; } ;
struct pinctrl_dev {int dummy; } ;
struct npcm7xx_pinctrl {int /*<<< orphan*/  gcr_regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fn_gpio ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int*,int,int /*<<< orphan*/ ) ; 
 struct npcm7xx_pinctrl* FUNC2 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctldev,
				       struct pinctrl_gpio_range *range,
				       unsigned int offset)
{
	struct npcm7xx_pinctrl *npcm = FUNC2(pctldev);

	if (!range) {
		FUNC0(npcm->dev, "invalid range\n");
		return -EINVAL;
	}
	if (!range->gc) {
		FUNC0(npcm->dev, "invalid gpiochip\n");
		return -EINVAL;
	}

	FUNC1(npcm->gcr_regmap, &offset, 1, fn_gpio);

	return 0;
}