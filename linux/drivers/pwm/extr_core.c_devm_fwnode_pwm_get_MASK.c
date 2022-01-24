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
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct pwm_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct pwm_device*) ; 
 struct pwm_device* FUNC2 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  devm_pwm_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct pwm_device**) ; 
 struct pwm_device** FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pwm_device**) ; 
 scalar_t__ FUNC6 (struct fwnode_handle*) ; 
 scalar_t__ FUNC7 (struct fwnode_handle*) ; 
 struct pwm_device* FUNC8 (struct device*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct fwnode_handle*) ; 

struct pwm_device *FUNC10(struct device *dev,
				       struct fwnode_handle *fwnode,
				       const char *con_id)
{
	struct pwm_device **ptr, *pwm = FUNC0(-ENODEV);

	ptr = FUNC4(devm_pwm_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	if (FUNC7(fwnode))
		pwm = FUNC8(dev, FUNC9(fwnode), con_id);
	else if (FUNC6(fwnode))
		pwm = FUNC2(fwnode);

	if (!FUNC1(pwm)) {
		*ptr = pwm;
		FUNC3(dev, ptr);
	} else {
		FUNC5(ptr);
	}

	return pwm;
}