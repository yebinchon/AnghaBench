#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_11__ {size_t num_zones; } ;
struct TYPE_9__ {TYPE_3__* name; } ;
struct TYPE_10__ {TYPE_2__ attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  global_led ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_6__* quirks ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zone_attribute_group ; 
 TYPE_3__* zone_attrs ; 
 TYPE_3__* zone_data ; 
 TYPE_3__* zone_dev_attrs ; 

__attribute__((used)) static void FUNC3(struct platform_device *dev)
{
	u8 zone;

	FUNC2(&dev->dev.kobj, &zone_attribute_group);
	FUNC1(&global_led);
	if (zone_dev_attrs) {
		for (zone = 0; zone < quirks->num_zones; zone++)
			FUNC0(zone_dev_attrs[zone].attr.name);
	}
	FUNC0(zone_dev_attrs);
	FUNC0(zone_data);
	FUNC0(zone_attrs);
}