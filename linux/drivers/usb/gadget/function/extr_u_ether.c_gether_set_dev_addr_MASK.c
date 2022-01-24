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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct eth_dev {int /*<<< orphan*/  dev_mac; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_ALEN ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct eth_dev* FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *net, const char *dev_addr)
{
	struct eth_dev *dev;
	u8 new_addr[ETH_ALEN];

	dev = FUNC2(net);
	if (FUNC0(dev_addr, new_addr))
		return -EINVAL;
	FUNC1(dev->dev_mac, new_addr, ETH_ALEN);
	return 0;
}