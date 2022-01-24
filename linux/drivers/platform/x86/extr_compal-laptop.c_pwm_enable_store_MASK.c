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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct compal_data {long pwm_enable; int curr_pwm; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct compal_data* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct compal_data *data = FUNC0(dev);
	long val;
	int err;

	err = FUNC1(buf, 10, &val);
	if (err)
		return err;
	if (val < 0)
		return -EINVAL;

	data->pwm_enable = val;

	switch (val) {
	case 0:  /* Full speed */
		FUNC3();
		FUNC4(255);
		break;
	case 1:  /* As set by pwm1 */
		FUNC3();
		FUNC4(data->curr_pwm);
		break;
	default: /* Control by motherboard */
		FUNC2();
		break;
	}

	return count;
}