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
struct power_supply {int /*<<< orphan*/  dev; TYPE_1__* desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tpacpi_battery_groups ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct power_supply *battery)
{
	int batteryid = FUNC1(battery->desc->name);

	if (FUNC2(batteryid))
		return -ENODEV;
	if (FUNC0(&battery->dev, tpacpi_battery_groups))
		return -ENODEV;
	return 0;
}