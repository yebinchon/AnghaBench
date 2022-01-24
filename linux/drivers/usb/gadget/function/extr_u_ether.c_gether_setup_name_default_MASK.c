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
struct net_device {int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  name; } ;
struct eth_dev {int /*<<< orphan*/  host_mac; int /*<<< orphan*/  dev_mac; int /*<<< orphan*/  qmult; struct net_device* net; int /*<<< orphan*/  rx_frames; int /*<<< orphan*/  rx_reqs; int /*<<< orphan*/  tx_reqs; int /*<<< orphan*/  work; int /*<<< orphan*/  req_lock; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  GETHER_MAX_ETH_FRAME_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QMULT_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC4 (int) ; 
 int /*<<< orphan*/  eth_netdev_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eth_work ; 
 int /*<<< orphan*/  gadget_type ; 
 struct eth_dev* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

struct net_device *FUNC11(const char *netname)
{
	struct net_device	*net;
	struct eth_dev		*dev;

	net = FUNC4(sizeof(*dev));
	if (!net)
		return FUNC0(-ENOMEM);

	dev = FUNC6(net);
	FUNC10(&dev->lock);
	FUNC10(&dev->req_lock);
	FUNC2(&dev->work, eth_work);
	FUNC1(&dev->tx_reqs);
	FUNC1(&dev->rx_reqs);

	FUNC8(&dev->rx_frames);

	/* network device setup */
	dev->net = net;
	dev->qmult = QMULT_DEFAULT;
	FUNC9(net->name, sizeof(net->name), "%s%%d", netname);

	FUNC5(dev->dev_mac);
	FUNC7("using random %s ethernet address\n", "self");
	FUNC5(dev->host_mac);
	FUNC7("using random %s ethernet address\n", "host");

	net->netdev_ops = &eth_netdev_ops;

	net->ethtool_ops = &ops;
	FUNC3(net, &gadget_type);

	/* MTU range: 14 - 15412 */
	net->min_mtu = ETH_HLEN;
	net->max_mtu = GETHER_MAX_ETH_FRAME_LEN;

	return net;
}