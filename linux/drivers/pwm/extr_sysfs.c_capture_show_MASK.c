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
struct pwm_capture {int period; int duty_cycle; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 struct pwm_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pwm_device*,struct pwm_capture*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char*,int,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *child,
			    struct device_attribute *attr,
			    char *buf)
{
	struct pwm_device *pwm = FUNC0(child);
	struct pwm_capture result;
	int ret;

	ret = FUNC2(pwm, &result, FUNC1(HZ));
	if (ret)
		return ret;

	return FUNC3(buf, "%u %u\n", result.period, result.duty_cycle);
}