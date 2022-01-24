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
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct pwm_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct pwm_device*) ; 
 int /*<<< orphan*/  devm_pwm_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct pwm_device**) ; 
 struct pwm_device** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pwm_device**) ; 
 struct pwm_device* FUNC5 (struct device*,struct device_node*,char const*) ; 

struct pwm_device *FUNC6(struct device *dev, struct device_node *np,
				   const char *con_id)
{
	struct pwm_device **ptr, *pwm;

	ptr = FUNC3(devm_pwm_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	pwm = FUNC5(dev, np, con_id);
	if (!FUNC1(pwm)) {
		*ptr = pwm;
		FUNC2(dev, ptr);
	} else {
		FUNC4(ptr);
	}

	return pwm;
}