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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_pinctrl_dev_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct pinctrl_dev**) ; 
 struct pinctrl_dev** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pinctrl_dev**) ; 
 int FUNC3 (struct pinctrl_desc*,struct device*,void*,struct pinctrl_dev**) ; 

int FUNC4(struct device *dev,
				   struct pinctrl_desc *pctldesc,
				   void *driver_data,
				   struct pinctrl_dev **pctldev)
{
	struct pinctrl_dev **ptr;
	int error;

	ptr = FUNC1(devm_pinctrl_dev_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return -ENOMEM;

	error = FUNC3(pctldesc, dev, driver_data, pctldev);
	if (error) {
		FUNC2(ptr);
		return error;
	}

	*ptr = *pctldev;
	FUNC0(dev, ptr);

	return 0;
}