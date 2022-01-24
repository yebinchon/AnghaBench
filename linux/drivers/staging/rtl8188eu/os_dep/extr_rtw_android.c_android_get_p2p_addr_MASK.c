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
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct net_device *net, char *command,
					int total_len)
{
	/* We use the same address as our HW MAC address */
	FUNC0(command, net->dev_addr, ETH_ALEN);
	return ETH_ALEN;
}