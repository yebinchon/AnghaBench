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
struct power_supply {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {size_t vindpm; } ;
struct bq24257_device {TYPE_1__ init_data; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/ * bq24257_vindpm_map ; 
 struct power_supply* FUNC0 (struct device*) ; 
 struct bq24257_device* FUNC1 (struct power_supply*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					   struct device_attribute *attr,
					   char *buf)
{
	struct power_supply *psy = FUNC0(dev);
	struct bq24257_device *bq = FUNC1(psy);

	return FUNC2(buf, PAGE_SIZE, "%u\n",
			 bq24257_vindpm_map[bq->init_data.vindpm]);
}