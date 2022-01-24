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
struct eth_dev {unsigned int qmult; } ;

/* Variables and functions */
 struct eth_dev* FUNC0 (struct net_device*) ; 

void FUNC1(struct net_device *net, unsigned qmult)
{
	struct eth_dev *dev;

	dev = FUNC0(net);
	dev->qmult = qmult;
}