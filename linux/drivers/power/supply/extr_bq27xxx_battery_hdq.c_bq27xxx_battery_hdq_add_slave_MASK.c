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
struct w1_slave {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  read; } ;
struct bq27xxx_device_info {char* name; TYPE_1__ bus; int /*<<< orphan*/  chip; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BQ27000 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  bq27xxx_battery_hdq_read ; 
 int FUNC0 (struct bq27xxx_device_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bq27xxx_device_info*) ; 
 struct bq27xxx_device_info* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct w1_slave *sl)
{
	struct bq27xxx_device_info *di;

	di = FUNC2(&sl->dev, sizeof(*di), GFP_KERNEL);
	if (!di)
		return -ENOMEM;

	FUNC1(&sl->dev, di);

	di->dev = &sl->dev;
	di->chip = BQ27000;
	di->name = "bq27000-battery";
	di->bus.read = bq27xxx_battery_hdq_read;

	return FUNC0(di);
}