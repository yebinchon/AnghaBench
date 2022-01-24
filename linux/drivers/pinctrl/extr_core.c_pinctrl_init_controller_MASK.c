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
struct pinctrl_dev {int /*<<< orphan*/  mutex; struct device* dev; int /*<<< orphan*/  node; int /*<<< orphan*/  gpio_ranges; int /*<<< orphan*/  pin_function_tree; int /*<<< orphan*/  pin_group_tree; int /*<<< orphan*/  pin_desc_tree; void* driver_data; struct pinctrl_desc* desc; int /*<<< orphan*/  owner; } ;
struct pinctrl_desc {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; scalar_t__ confops; scalar_t__ pmxops; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct pinctrl_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pinctrl_dev*) ; 
 struct pinctrl_dev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct pinctrl_dev*) ; 
 int FUNC10 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pinctrl_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pinctrl_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct pinctrl_dev*) ; 

__attribute__((used)) static struct pinctrl_dev *
FUNC14(struct pinctrl_desc *pctldesc, struct device *dev,
			void *driver_data)
{
	struct pinctrl_dev *pctldev;
	int ret;

	if (!pctldesc)
		return FUNC0(-EINVAL);
	if (!pctldesc->name)
		return FUNC0(-EINVAL);

	pctldev = FUNC6(sizeof(*pctldev), GFP_KERNEL);
	if (!pctldev)
		return FUNC0(-ENOMEM);

	/* Initialize pin control device struct */
	pctldev->owner = pctldesc->owner;
	pctldev->desc = pctldesc;
	pctldev->driver_data = driver_data;
	FUNC2(&pctldev->pin_desc_tree, GFP_KERNEL);
#ifdef CONFIG_GENERIC_PINCTRL_GROUPS
	INIT_RADIX_TREE(&pctldev->pin_group_tree, GFP_KERNEL);
#endif
#ifdef CONFIG_GENERIC_PINMUX_FUNCTIONS
	INIT_RADIX_TREE(&pctldev->pin_function_tree, GFP_KERNEL);
#endif
	FUNC1(&pctldev->gpio_ranges);
	FUNC1(&pctldev->node);
	pctldev->dev = dev;
	FUNC8(&pctldev->mutex);

	/* check core ops for sanity */
	ret = FUNC10(pctldev);
	if (ret) {
		FUNC4(dev, "pinctrl ops lacks necessary functions\n");
		goto out_err;
	}

	/* If we're implementing pinmuxing, check the ops for sanity */
	if (pctldesc->pmxops) {
		ret = FUNC13(pctldev);
		if (ret)
			goto out_err;
	}

	/* If we're implementing pinconfig, check the ops for sanity */
	if (pctldesc->confops) {
		ret = FUNC9(pctldev);
		if (ret)
			goto out_err;
	}

	/* Register all the pins */
	FUNC3(dev, "try to register %d pins ...\n",  pctldesc->npins);
	ret = FUNC12(pctldev, pctldesc->pins, pctldesc->npins);
	if (ret) {
		FUNC4(dev, "error during pin registration\n");
		FUNC11(pctldev, pctldesc->pins,
				      pctldesc->npins);
		goto out_err;
	}

	return pctldev;

out_err:
	FUNC7(&pctldev->mutex);
	FUNC5(pctldev);
	return FUNC0(ret);
}