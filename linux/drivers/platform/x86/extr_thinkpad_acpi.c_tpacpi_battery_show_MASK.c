#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct power_supply {TYPE_1__* desc; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {scalar_t__ individual_addressing; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int BAT_PRIMARY ; 
 int /*<<< orphan*/  ENODEV ; 
 TYPE_2__ battery_info ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct power_supply* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (int,int,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(int what,
				   struct device *dev,
				   char *buf)
{
	struct power_supply *supply = FUNC1(dev);
	int ret, battery;
	/*
	 * Some systems have support for more than
	 * one battery. If that is the case,
	 * tpacpi_battery_probe marked that addressing
	 * them individually is supported, so we;
	 * based on the device struct.
	 *
	 * On systems that are not supported, we assume
	 * the primary as most of the ACPI calls fail
	 * with "Any Battery" as the parameter.
	 */
	if (battery_info.individual_addressing)
		/* BAT_PRIMARY or BAT_SECONDARY */
		battery = FUNC3(supply->desc->name);
	else
		battery = BAT_PRIMARY;
	if (FUNC2(what, battery, &ret))
		return -ENODEV;
	return FUNC0(buf, "%d\n", ret);
}