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
struct pinctrl_dev {int dummy; } ;
struct pinctrl_desc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct pinctrl_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  devm_pinctrl_dev_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct pinctrl_dev**) ; 
 struct pinctrl_dev** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pinctrl_dev**) ; 
 struct pinctrl_dev* FUNC5 (struct pinctrl_desc*,struct device*,void*) ; 

struct pinctrl_dev *FUNC6(struct device *dev,
					  struct pinctrl_desc *pctldesc,
					  void *driver_data)
{
	struct pinctrl_dev **ptr, *pctldev;

	ptr = FUNC3(devm_pinctrl_dev_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	pctldev = FUNC5(pctldesc, dev, driver_data);
	if (FUNC1(pctldev)) {
		FUNC4(ptr);
		return pctldev;
	}

	*ptr = pctldev;
	FUNC2(dev, ptr);

	return pctldev;
}