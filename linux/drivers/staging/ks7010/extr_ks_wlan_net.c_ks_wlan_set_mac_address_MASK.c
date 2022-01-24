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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct ks_wlan_private {int mac_address_valid; int /*<<< orphan*/  eth_addr; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  SME_MACADDRESS_SET_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ks_wlan_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct ks_wlan_private* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static
int FUNC6(struct net_device *dev, void *addr)
{
	struct ks_wlan_private *priv = FUNC4(dev);
	struct sockaddr *mac_addr = (struct sockaddr *)addr;

	if (FUNC5(dev))
		return -EBUSY;
	FUNC2(dev->dev_addr, mac_addr->sa_data, dev->addr_len);
	FUNC0(priv->eth_addr, mac_addr->sa_data);

	priv->mac_address_valid = false;
	FUNC1(priv, SME_MACADDRESS_SET_REQUEST);
	FUNC3(dev, "ks_wlan:  MAC ADDRESS = %pM\n", priv->eth_addr);
	return 0;
}