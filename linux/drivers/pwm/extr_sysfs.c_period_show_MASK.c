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
struct pwm_state {int period; } ;
struct pwm_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct pwm_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pwm_device const*,struct pwm_state*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *child,
			   struct device_attribute *attr,
			   char *buf)
{
	const struct pwm_device *pwm = FUNC0(child);
	struct pwm_state state;

	FUNC1(pwm, &state);

	return FUNC2(buf, "%u\n", state.period);
}