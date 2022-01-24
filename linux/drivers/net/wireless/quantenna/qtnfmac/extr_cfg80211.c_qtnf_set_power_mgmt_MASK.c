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
struct wiphy {int dummy; } ;
struct qtnf_vif {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLINK_PM_AUTO_STANDBY ; 
 int /*<<< orphan*/  QLINK_PM_OFF ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct qtnf_vif*,int /*<<< orphan*/ ,int) ; 
 struct qtnf_vif* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct wiphy *wiphy, struct net_device *dev,
			       bool enabled, int timeout)
{
	struct qtnf_vif *vif = FUNC2(dev);
	int ret;

	ret = FUNC1(vif, enabled ? QLINK_PM_AUTO_STANDBY :
				   QLINK_PM_OFF, timeout);
	if (ret)
		FUNC0("%s: failed to set PM mode ret=%d\n", dev->name, ret);

	return ret;
}