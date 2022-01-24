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
struct net_device {int /*<<< orphan*/  name; } ;
struct ks_wlan_private {int /*<<< orphan*/  mac_address_valid; scalar_t__ cur_rx; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct ks_wlan_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static
int FUNC3(struct net_device *dev)
{
	struct ks_wlan_private *priv = FUNC1(dev);

	priv->cur_rx = 0;

	if (!priv->mac_address_valid) {
		FUNC0(dev, "ks_wlan : %s Not READY !!\n", dev->name);
		return -EBUSY;
	}
	FUNC2(dev);

	return 0;
}