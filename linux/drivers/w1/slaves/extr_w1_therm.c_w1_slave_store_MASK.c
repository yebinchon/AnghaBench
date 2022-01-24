#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct w1_slave {TYPE_2__* family; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_7__ {int (* eeprom ) (struct device*) ;int (* precision ) (struct device*,int) ;TYPE_1__* f; } ;
struct TYPE_6__ {scalar_t__ fid; } ;
struct TYPE_5__ {scalar_t__ fid; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 struct w1_slave* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct device*) ; 
 int FUNC4 (struct device*,int) ; 
 TYPE_3__* w1_therm_families ; 

__attribute__((used)) static ssize_t FUNC5(struct device *device,
			      struct device_attribute *attr, const char *buf,
			      size_t size)
{
	int val, ret;
	struct w1_slave *sl = FUNC1(device);
	int i;

	ret = FUNC2(buf, 0, &val);
	if (ret)
		return ret;

	for (i = 0; i < FUNC0(w1_therm_families); ++i) {
		if (w1_therm_families[i].f->fid == sl->family->fid) {
			/* zero value indicates to write current configuration to eeprom */
			if (val == 0)
				ret = w1_therm_families[i].eeprom(device);
			else
				ret = w1_therm_families[i].precision(device, val);
			break;
		}
	}
	return ret ? : size;
}