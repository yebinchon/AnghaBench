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
struct ql_adapter {int /*<<< orphan*/  lb_count; int /*<<< orphan*/  timer; int /*<<< orphan*/  tx_ring_size; int /*<<< orphan*/  flags; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct net_device {int hw_features; int features; int vlan_features; int watchdog_timeo; int max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  irq; int /*<<< orphan*/  tx_queue_len; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_DATA_LEN ; 
 int HZ ; 
 int /*<<< orphan*/  MAX_CPUS ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO_ECN ; 
 int /*<<< orphan*/  QL_DMA64 ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TIMER_DEFERRABLE ; 
 struct net_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct ql_adapter* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int FUNC11 (struct pci_dev*,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  ql_timer ; 
 int /*<<< orphan*/  qlge_ethtool_ops ; 
 int /*<<< orphan*/  qlge_netdev_ops ; 
 int FUNC14 (struct net_device*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct pci_dev *pdev,
		      const struct pci_device_id *pci_entry)
{
	struct net_device *ndev = NULL;
	struct ql_adapter *qdev = NULL;
	static int cards_found = 0;
	int err = 0;

	ndev = FUNC1(sizeof(struct ql_adapter),
			FUNC5(MAX_CPUS, FUNC8()));
	if (!ndev)
		return -ENOMEM;

	err = FUNC11(pdev, ndev, cards_found);
	if (err < 0) {
		FUNC4(ndev);
		return err;
	}

	qdev = FUNC7(ndev);
	FUNC0(ndev, &pdev->dev);
	ndev->hw_features = NETIF_F_SG |
			    NETIF_F_IP_CSUM |
			    NETIF_F_TSO |
			    NETIF_F_TSO_ECN |
			    NETIF_F_HW_VLAN_CTAG_TX |
			    NETIF_F_HW_VLAN_CTAG_RX |
			    NETIF_F_HW_VLAN_CTAG_FILTER |
			    NETIF_F_RXCSUM;
	ndev->features = ndev->hw_features;
	ndev->vlan_features = ndev->hw_features;
	/* vlan gets same features (except vlan filter) */
	ndev->vlan_features &= ~(NETIF_F_HW_VLAN_CTAG_FILTER |
				 NETIF_F_HW_VLAN_CTAG_TX |
				 NETIF_F_HW_VLAN_CTAG_RX);

	if (FUNC15(QL_DMA64, &qdev->flags))
		ndev->features |= NETIF_F_HIGHDMA;

	/*
	 * Set up net_device structure.
	 */
	ndev->tx_queue_len = qdev->tx_ring_size;
	ndev->irq = pdev->irq;

	ndev->netdev_ops = &qlge_netdev_ops;
	ndev->ethtool_ops = &qlge_ethtool_ops;
	ndev->watchdog_timeo = 10 * HZ;

	/* MTU range: this driver only supports 1500 or 9000, so this only
	 * filters out values above or below, and we'll rely on
	 * qlge_change_mtu to make sure only 1500 or 9000 are allowed
	 */
	ndev->min_mtu = ETH_DATA_LEN;
	ndev->max_mtu = 9000;

	err = FUNC14(ndev);
	if (err) {
		FUNC3(&pdev->dev, "net device registration failed.\n");
		FUNC13(pdev);
		FUNC9(pdev);
		FUNC4(ndev);
		return err;
	}
	/* Start up the timer to trigger EEH if
	 * the bus goes dead
	 */
	FUNC16(&qdev->timer, ql_timer, TIMER_DEFERRABLE);
	FUNC6(&qdev->timer, jiffies + (5*HZ));
	FUNC12(qdev);
	FUNC10(ndev);
	FUNC2(&qdev->lb_count, 0);
	cards_found++;
	return 0;
}