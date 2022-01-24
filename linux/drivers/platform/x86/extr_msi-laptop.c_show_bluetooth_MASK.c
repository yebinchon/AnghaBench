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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__ old_ec_model; } ;

/* Variables and functions */
 int bluetooth_s ; 
 int FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int FUNC1 () ; 
 TYPE_1__* quirks ; 
 int FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
	struct device_attribute *attr, char *buf)
{

	int ret, enabled = 0;

	if (quirks->old_ec_model) {
		ret = FUNC0(NULL, &enabled);
	} else {
		ret = FUNC1();
		enabled = bluetooth_s;
	}
	if (ret < 0)
		return ret;

	return FUNC2(buf, "%i\n", enabled);
}