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
struct usb_gadget {int /*<<< orphan*/  dev; } ;
struct sockaddr {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {int /*<<< orphan*/  type; TYPE_1__ dev; } ;
struct eth_dev {int /*<<< orphan*/  dev_mac; int /*<<< orphan*/  host_mac; struct usb_gadget* gadget; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct eth_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct net_device*,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct eth_dev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(struct net_device *net)
{
	struct eth_dev *dev;
	struct usb_gadget *g;
	struct sockaddr sa;
	int status;

	if (!net->dev.parent)
		return -EINVAL;
	dev = FUNC4(net);
	g = dev->gadget;
	status = FUNC7(net);
	if (status < 0) {
		FUNC1(&g->dev, "register_netdev failed, %d\n", status);
		return status;
	} else {
		FUNC0(dev, "HOST MAC %pM\n", dev->host_mac);

		/* two kinds of host-initiated state changes:
		 *  - iff DATA transfer is active, carrier is "on"
		 *  - tx queueing enabled if open *and* carrier is "on"
		 */
		FUNC5(net);
	}
	sa.sa_family = net->type;
	FUNC3(sa.sa_data, dev->dev_mac, ETH_ALEN);
	FUNC8();
	status = FUNC2(net, &sa, NULL);
	FUNC9();
	if (status)
		FUNC6("cannot set self ethernet address: %d\n", status);
	else
		FUNC0(dev, "MAC %pM\n", dev->dev_mac);

	return status;
}