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
typedef  int u32 ;
struct TYPE_4__ {int conf; } ;
struct dp_altmode {scalar_t__ state; int /*<<< orphan*/  lock; TYPE_2__ data; TYPE_1__* alt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {scalar_t__ active; int /*<<< orphan*/  vdo; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DP_CAP_DFP_D ; 
 int DP_CAP_UFP_D ; 
 int DP_CONF_DFP_D ; 
 int DP_CONF_DUAL_D ; 
 int DP_CONF_UFP_D ; 
 scalar_t__ DP_STATE_IDLE ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  configurations ; 
 struct dp_altmode* FUNC1 (struct device*) ; 
 int FUNC2 (struct dp_altmode*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static ssize_t
FUNC6(struct device *dev, struct device_attribute *attr,
		    const char *buf, size_t size)
{
	struct dp_altmode *dp = FUNC1(dev);
	u32 conf;
	u32 cap;
	int con;
	int ret = 0;

	con = FUNC5(configurations, buf);
	if (con < 0)
		return con;

	FUNC3(&dp->lock);

	if (dp->state != DP_STATE_IDLE) {
		ret = -EBUSY;
		goto err_unlock;
	}

	cap = FUNC0(dp->alt->vdo);

	if ((con == DP_CONF_DFP_D && !(cap & DP_CAP_DFP_D)) ||
	    (con == DP_CONF_UFP_D && !(cap & DP_CAP_UFP_D))) {
		ret = -EINVAL;
		goto err_unlock;
	}

	conf = dp->data.conf & ~DP_CONF_DUAL_D;
	conf |= con;

	if (dp->alt->active) {
		ret = FUNC2(dp, conf);
		if (ret)
			goto err_unlock;
	}

	dp->data.conf = conf;

err_unlock:
	FUNC4(&dp->lock);

	return ret ? ret : size;
}