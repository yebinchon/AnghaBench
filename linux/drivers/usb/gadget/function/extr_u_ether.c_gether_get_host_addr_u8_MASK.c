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
struct eth_dev {int /*<<< orphan*/  host_mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct eth_dev* FUNC1 (struct net_device*) ; 

void FUNC2(struct net_device *net, u8 host_mac[ETH_ALEN])
{
	struct eth_dev *dev;

	dev = FUNC1(net);
	FUNC0(host_mac, dev->host_mac, ETH_ALEN);
}