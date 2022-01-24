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
typedef  scalar_t__ u8 ;
struct phy_dev {struct net_device** dev; } ;
struct nic {int /*<<< orphan*/  dest_mac_addr; int /*<<< orphan*/  src_mac_addr; scalar_t__ nic_id; struct phy_dev* phy_dev; struct net_device* netdev; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mtu; int /*<<< orphan*/  flags; int /*<<< orphan*/ * netdev_ops; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_MTU_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IFF_MULTICAST ; 
 scalar_t__ MAX_NIC_TYPE ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ether_setup ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  gdm_netdev_ops ; 
 int /*<<< orphan*/  FUNC4 (struct nic*,int /*<<< orphan*/ ,int) ; 
 struct nic* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_dev*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*) ; 
 int /*<<< orphan*/  wwan_type ; 

int FUNC11(struct phy_dev *phy_dev,
			struct device *dev, u8 *mac_address)
{
	struct nic *nic;
	struct net_device *net;
	char pdn_dev_name[16];
	int ret = 0;
	u8 index;

	FUNC10(mac_address);

	for (index = 0; index < MAX_NIC_TYPE; index++) {
		/* Create device name lteXpdnX */
		FUNC8(pdn_dev_name, "lte%%dpdn%d", index);

		/* Allocate netdev */
		net = FUNC2(sizeof(struct nic), pdn_dev_name,
				   NET_NAME_UNKNOWN, ether_setup);
		if (!net) {
			ret = -ENOMEM;
			goto err;
		}
		net->netdev_ops = &gdm_netdev_ops;
		net->flags &= ~IFF_MULTICAST;
		net->mtu = DEFAULT_MTU_SIZE;

		nic = FUNC5(net);
		FUNC4(nic, 0, sizeof(struct nic));
		nic->netdev = net;
		nic->phy_dev = phy_dev;
		nic->nic_id = index;

		FUNC3(net->dev_addr,
				 nic->src_mac_addr,
				 nic->dest_mac_addr,
				 mac_address,
				 index);

		FUNC0(net, dev);
		FUNC1(net, &wwan_type);

		ret = FUNC7(net);
		if (ret)
			goto err;

		FUNC6(net);

		phy_dev->dev[index] = net;
	}

	return 0;

err:
	FUNC9(phy_dev);

	return ret;
}