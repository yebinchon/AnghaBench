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
struct qeth_card {int dummy; } ;
struct net_device {scalar_t__ ml_priv; int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  qeth_l3_netdev_ops ; 
 int /*<<< orphan*/  qeth_l3_osa_netdev_ops ; 
 struct net_device* FUNC1 (struct net_device*) ; 

__attribute__((used)) static struct qeth_card *FUNC2(struct net_device *dev)
{
	if (FUNC0(dev))
		dev = FUNC1(dev);
	if (dev->netdev_ops == &qeth_l3_osa_netdev_ops ||
	    dev->netdev_ops == &qeth_l3_netdev_ops)
		return (struct qeth_card *) dev->ml_priv;
	return NULL;
}