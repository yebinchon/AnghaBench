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
 scalar_t__ FUNC0 (struct pinctrl_dev*) ; 
 int FUNC1 (struct pinctrl_dev*) ; 
 struct pinctrl_dev* FUNC2 (struct pinctrl_desc*,struct device*,void*) ; 

int FUNC3(struct pinctrl_desc *pctldesc,
			      struct device *dev, void *driver_data,
			      struct pinctrl_dev **pctldev)
{
	struct pinctrl_dev *p;

	p = FUNC2(pctldesc, dev, driver_data);
	if (FUNC0(p))
		return FUNC1(p);

	/*
	 * We have pinctrl_start() call functions in the pin controller
	 * driver with create_pinctrl() for at least dt_node_to_map(). So
	 * let's make sure pctldev is properly initialized for the
	 * pin controller driver before we do anything.
	 */
	*pctldev = p;

	return 0;
}