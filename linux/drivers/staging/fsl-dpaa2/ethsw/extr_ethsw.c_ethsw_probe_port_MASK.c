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
typedef  size_t u16 ;
struct net_device {int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct ethsw_port_priv {size_t idx; int flood; int /*<<< orphan*/  stp_state; struct ethsw_core* ethsw_data; struct net_device* netdev; } ;
struct ethsw_core {struct ethsw_port_priv** ports; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_STATE_FORWARDING ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETHSW_MAX_FRAME_LENGTH ; 
 int /*<<< orphan*/  ETH_MIN_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct device*) ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  ethsw_port_ethtool_ops ; 
 int FUNC3 (struct ethsw_port_priv*,size_t) ; 
 int /*<<< orphan*/  ethsw_port_ops ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct ethsw_port_priv* FUNC5 (struct net_device*) ; 
 int FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct ethsw_core *ethsw, u16 port_idx)
{
	struct ethsw_port_priv *port_priv;
	struct device *dev = ethsw->dev;
	struct net_device *port_netdev;
	int err;

	port_netdev = FUNC1(sizeof(struct ethsw_port_priv));
	if (!port_netdev) {
		FUNC2(dev, "alloc_etherdev error\n");
		return -ENOMEM;
	}

	port_priv = FUNC5(port_netdev);
	port_priv->netdev = port_netdev;
	port_priv->ethsw_data = ethsw;

	port_priv->idx = port_idx;
	port_priv->stp_state = BR_STATE_FORWARDING;

	/* Flooding is implicitly enabled */
	port_priv->flood = true;

	FUNC0(port_netdev, dev);
	port_netdev->netdev_ops = &ethsw_port_ops;
	port_netdev->ethtool_ops = &ethsw_port_ethtool_ops;

	/* Set MTU limits */
	port_netdev->min_mtu = ETH_MIN_MTU;
	port_netdev->max_mtu = ETHSW_MAX_FRAME_LENGTH;

	err = FUNC3(port_priv, port_idx);
	if (err)
		goto err_port_probe;

	err = FUNC6(port_netdev);
	if (err < 0) {
		FUNC2(dev, "register_netdev error %d\n", err);
		goto err_port_probe;
	}

	ethsw->ports[port_idx] = port_priv;

	return 0;

err_port_probe:
	FUNC4(port_netdev);

	return err;
}