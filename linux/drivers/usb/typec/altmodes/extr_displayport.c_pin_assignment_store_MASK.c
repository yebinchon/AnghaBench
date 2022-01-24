#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_4__ {int conf; } ;
struct dp_altmode {scalar_t__ state; int /*<<< orphan*/  lock; TYPE_2__ data; TYPE_1__* alt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {scalar_t__ active; int /*<<< orphan*/  vdo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ DP_CONF_DFP_D ; 
 int FUNC4 (int) ; 
 int DP_CONF_PIN_ASSIGNEMENT_MASK ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ DP_STATE_IDLE ; 
 int EBUSY ; 
 int EINVAL ; 
 struct dp_altmode* FUNC6 (struct device*) ; 
 int FUNC7 (struct dp_altmode*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pin_assignments ; 
 int FUNC10 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static ssize_t
FUNC11(struct device *dev, struct device_attribute *attr,
		     const char *buf, size_t size)
{
	struct dp_altmode *dp = FUNC6(dev);
	u8 assignments;
	u32 conf;
	int ret;

	ret = FUNC10(pin_assignments, buf);
	if (ret < 0)
		return ret;

	conf = FUNC5(FUNC0(ret));
	ret = 0;

	FUNC8(&dp->lock);

	if (conf & dp->data.conf)
		goto out_unlock;

	if (dp->state != DP_STATE_IDLE) {
		ret = -EBUSY;
		goto out_unlock;
	}

	if (FUNC3(dp->data.conf) == DP_CONF_DFP_D)
		assignments = FUNC2(dp->alt->vdo);
	else
		assignments = FUNC1(dp->alt->vdo);

	if (!(FUNC4(conf) & assignments)) {
		ret = -EINVAL;
		goto out_unlock;
	}

	conf |= dp->data.conf & ~DP_CONF_PIN_ASSIGNEMENT_MASK;

	/* Only send Configure command if a configuration has been set */
	if (dp->alt->active && FUNC3(dp->data.conf)) {
		ret = FUNC7(dp, conf);
		if (ret)
			goto out_unlock;
	}

	dp->data.conf = conf;

out_unlock:
	FUNC9(&dp->lock);

	return ret ? ret : size;
}