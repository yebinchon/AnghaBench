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
struct wilc_vif {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WILC_AP_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct wilc_vif* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct wilc_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct wiphy *wiphy, struct net_device *dev)
{
	int ret;
	struct wilc_vif *vif = FUNC1(dev);

	FUNC3(dev, NULL, WILC_AP_MODE);

	ret = FUNC2(vif);

	if (ret)
		FUNC0(dev, "Host delete beacon fail\n");

	return ret;
}