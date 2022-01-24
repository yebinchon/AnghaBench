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
struct net_device {int dummy; } ;
struct ks_wlan_private {int is_device_open; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ks_wlan_private* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  update_phyinfo_timer ; 

int FUNC4(struct net_device *dev)
{
	struct ks_wlan_private *priv = FUNC1(dev);

	priv->is_device_open = false;
	FUNC0(&update_phyinfo_timer);

	if (FUNC2(dev))
		FUNC3(dev);

	return 0;
}