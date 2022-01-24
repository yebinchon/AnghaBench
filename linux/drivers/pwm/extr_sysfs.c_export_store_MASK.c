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
struct pwm_device {int dummy; } ;
struct pwm_chip {unsigned int npwm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct pwm_device*) ; 
 int FUNC1 (struct pwm_device*) ; 
 struct pwm_chip* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC4 (struct device*,struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pwm_device*) ; 
 struct pwm_device* FUNC6 (struct pwm_chip*,unsigned int,char*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *parent,
			    struct device_attribute *attr,
			    const char *buf, size_t len)
{
	struct pwm_chip *chip = FUNC2(parent);
	struct pwm_device *pwm;
	unsigned int hwpwm;
	int ret;

	ret = FUNC3(buf, 0, &hwpwm);
	if (ret < 0)
		return ret;

	if (hwpwm >= chip->npwm)
		return -ENODEV;

	pwm = FUNC6(chip, hwpwm, "sysfs");
	if (FUNC0(pwm))
		return FUNC1(pwm);

	ret = FUNC4(parent, pwm);
	if (ret < 0)
		FUNC5(pwm);

	return ret ? : len;
}