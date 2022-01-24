#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct octeon_ethernet {int queue; scalar_t__ of_node; } ;
struct net_device_stats {int dummy; } ;
struct net_device {int features; TYPE_1__* netdev_ops; int /*<<< orphan*/  mtu; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ndo_stop ) (struct net_device*) ;int /*<<< orphan*/  (* ndo_get_stats ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_LLTX ; 
 int NETIF_F_SG ; 
 scalar_t__ always_use_pow ; 
 int /*<<< orphan*/  cvm_oct_ethtool_ops ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct octeon_ethernet* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 
 int pow_send_group ; 
 int /*<<< orphan*/  pow_send_list ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

int FUNC11(struct net_device *dev)
{
	struct octeon_ethernet *priv = FUNC6(dev);
	const u8 *mac = NULL;

	if (priv->of_node)
		mac = FUNC7(priv->of_node);

	if (!FUNC0(mac))
		FUNC4(dev->dev_addr, mac);
	else
		FUNC3(dev);

	/*
	 * Force the interface to use the POW send if always_use_pow
	 * was specified or it is in the pow send list.
	 */
	if ((pow_send_group != -1) &&
	    (always_use_pow || FUNC8(pow_send_list, dev->name)))
		priv->queue = -1;

	if (priv->queue != -1)
		dev->features |= NETIF_F_SG | NETIF_F_IP_CSUM;

	/* We do our own locking, Linux doesn't need to */
	dev->features |= NETIF_F_LLTX;
	dev->ethtool_ops = &cvm_oct_ethtool_ops;

	FUNC1(dev);
	FUNC2(dev, dev->mtu);

	/*
	 * Zero out stats for port so we won't mistakenly show
	 * counters from the bootloader.
	 */
	FUNC5(dev->netdev_ops->ndo_get_stats(dev), 0,
	       sizeof(struct net_device_stats));

	if (dev->netdev_ops->ndo_stop)
		dev->netdev_ops->ndo_stop(dev);

	return 0;
}