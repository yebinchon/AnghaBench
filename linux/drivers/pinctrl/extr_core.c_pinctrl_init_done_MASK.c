#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {struct dev_pin_info* pins; } ;
struct dev_pin_info {scalar_t__ init_state; scalar_t__ default_state; TYPE_1__* p; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (TYPE_1__*,scalar_t__) ; 

int FUNC3(struct device *dev)
{
	struct dev_pin_info *pins = dev->pins;
	int ret;

	if (!pins)
		return 0;

	if (FUNC0(pins->init_state))
		return 0; /* No such state */

	if (pins->p->state != pins->init_state)
		return 0; /* Not at init anyway */

	if (FUNC0(pins->default_state))
		return 0; /* No default state */

	ret = FUNC2(pins->p, pins->default_state);
	if (ret)
		FUNC1(dev, "failed to activate default pinctrl state\n");

	return ret;
}