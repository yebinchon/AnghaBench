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
struct usb_gadget {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  name; } ;
struct eth_dev {unsigned int qmult; int /*<<< orphan*/  host_mac; struct usb_gadget* gadget; struct net_device* net; int /*<<< orphan*/  rx_frames; int /*<<< orphan*/  rx_reqs; int /*<<< orphan*/  tx_reqs; int /*<<< orphan*/  work; int /*<<< orphan*/  req_lock; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct eth_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  GETHER_MAX_ETH_FRAME_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct eth_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  eth_netdev_ops ; 
 int /*<<< orphan*/  eth_work ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  gadget_type ; 
 scalar_t__ FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct eth_dev* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  ops ; 
 int FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

struct eth_dev *FUNC18(struct usb_gadget *g,
		const char *dev_addr, const char *host_addr,
		u8 ethaddr[ETH_ALEN], unsigned qmult, const char *netname)
{
	struct eth_dev		*dev;
	struct net_device	*net;
	int			status;

	net = FUNC6(sizeof *dev);
	if (!net)
		return FUNC0(-ENOMEM);

	dev = FUNC12(net);
	FUNC17(&dev->lock);
	FUNC17(&dev->req_lock);
	FUNC3(&dev->work, eth_work);
	FUNC2(&dev->tx_reqs);
	FUNC2(&dev->rx_reqs);

	FUNC15(&dev->rx_frames);

	/* network device setup */
	dev->net = net;
	dev->qmult = qmult;
	FUNC16(net->name, sizeof(net->name), "%s%%d", netname);

	if (FUNC10(dev_addr, net->dev_addr))
		FUNC8(&g->dev,
			"using random %s ethernet address\n", "self");
	if (FUNC10(host_addr, dev->host_mac))
		FUNC8(&g->dev,
			"using random %s ethernet address\n", "host");

	if (ethaddr)
		FUNC11(ethaddr, dev->host_mac, ETH_ALEN);

	net->netdev_ops = &eth_netdev_ops;

	net->ethtool_ops = &ops;

	/* MTU range: 14 - 15412 */
	net->min_mtu = ETH_HLEN;
	net->max_mtu = GETHER_MAX_ETH_FRAME_LEN;

	dev->gadget = g;
	FUNC4(net, &g->dev);
	FUNC5(net, &gadget_type);

	status = FUNC14(net);
	if (status < 0) {
		FUNC7(&g->dev, "register_netdev failed, %d\n", status);
		FUNC9(net);
		dev = FUNC0(status);
	} else {
		FUNC1(dev, "MAC %pM\n", net->dev_addr);
		FUNC1(dev, "HOST MAC %pM\n", dev->host_mac);

		/*
		 * two kinds of host-initiated state changes:
		 *  - iff DATA transfer is active, carrier is "on"
		 *  - tx queueing enabled if open *and* carrier is "on"
		 */
		FUNC13(net);
	}

	return dev;
}