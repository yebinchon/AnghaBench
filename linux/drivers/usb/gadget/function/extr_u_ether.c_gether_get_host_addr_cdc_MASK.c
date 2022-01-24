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
struct eth_dev {int /*<<< orphan*/  host_mac; } ;

/* Variables and functions */
 int EINVAL ; 
 struct eth_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 

int FUNC3(struct net_device *net, char *host_addr, int len)
{
	struct eth_dev *dev;

	if (len < 13)
		return -EINVAL;

	dev = FUNC0(net);
	FUNC1(host_addr, len, "%pm", dev->host_mac);

	return FUNC2(host_addr);
}