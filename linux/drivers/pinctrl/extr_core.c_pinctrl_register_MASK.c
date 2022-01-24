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
 struct pinctrl_dev* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct pinctrl_dev*) ; 
 int FUNC2 (struct pinctrl_dev*) ; 
 struct pinctrl_dev* FUNC3 (struct pinctrl_desc*,struct device*,void*) ; 

struct pinctrl_dev *FUNC4(struct pinctrl_desc *pctldesc,
				    struct device *dev, void *driver_data)
{
	struct pinctrl_dev *pctldev;
	int error;

	pctldev = FUNC3(pctldesc, dev, driver_data);
	if (FUNC1(pctldev))
		return pctldev;

	error = FUNC2(pctldev);
	if (error)
		return FUNC0(error);

	return pctldev;

}