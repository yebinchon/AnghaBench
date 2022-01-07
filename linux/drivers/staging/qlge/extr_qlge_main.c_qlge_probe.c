
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int lb_count; int timer; int tx_ring_size; int flags; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int irq; } ;
struct net_device {int hw_features; int features; int vlan_features; int watchdog_timeo; int max_mtu; int min_mtu; int * ethtool_ops; int * netdev_ops; int irq; int tx_queue_len; } ;


 int ENOMEM ;
 int ETH_DATA_LEN ;
 int HZ ;
 int MAX_CPUS ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO_ECN ;
 int QL_DMA64 ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int TIMER_DEFERRABLE ;
 struct net_device* alloc_etherdev_mq (int,int ) ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*) ;
 int free_netdev (struct net_device*) ;
 scalar_t__ jiffies ;
 int min (int ,int ) ;
 int mod_timer (int *,scalar_t__) ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int netif_get_num_default_rss_queues () ;
 int pci_disable_device (struct pci_dev*) ;
 int ql_display_dev_info (struct net_device*) ;
 int ql_init_device (struct pci_dev*,struct net_device*,int) ;
 int ql_link_off (struct ql_adapter*) ;
 int ql_release_all (struct pci_dev*) ;
 int ql_timer ;
 int qlge_ethtool_ops ;
 int qlge_netdev_ops ;
 int register_netdev (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int qlge_probe(struct pci_dev *pdev,
        const struct pci_device_id *pci_entry)
{
 struct net_device *ndev = ((void*)0);
 struct ql_adapter *qdev = ((void*)0);
 static int cards_found = 0;
 int err = 0;

 ndev = alloc_etherdev_mq(sizeof(struct ql_adapter),
   min(MAX_CPUS, netif_get_num_default_rss_queues()));
 if (!ndev)
  return -ENOMEM;

 err = ql_init_device(pdev, ndev, cards_found);
 if (err < 0) {
  free_netdev(ndev);
  return err;
 }

 qdev = netdev_priv(ndev);
 SET_NETDEV_DEV(ndev, &pdev->dev);
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

 ndev->vlan_features &= ~(NETIF_F_HW_VLAN_CTAG_FILTER |
     NETIF_F_HW_VLAN_CTAG_TX |
     NETIF_F_HW_VLAN_CTAG_RX);

 if (test_bit(QL_DMA64, &qdev->flags))
  ndev->features |= NETIF_F_HIGHDMA;




 ndev->tx_queue_len = qdev->tx_ring_size;
 ndev->irq = pdev->irq;

 ndev->netdev_ops = &qlge_netdev_ops;
 ndev->ethtool_ops = &qlge_ethtool_ops;
 ndev->watchdog_timeo = 10 * HZ;





 ndev->min_mtu = ETH_DATA_LEN;
 ndev->max_mtu = 9000;

 err = register_netdev(ndev);
 if (err) {
  dev_err(&pdev->dev, "net device registration failed.\n");
  ql_release_all(pdev);
  pci_disable_device(pdev);
  free_netdev(ndev);
  return err;
 }



 timer_setup(&qdev->timer, ql_timer, TIMER_DEFERRABLE);
 mod_timer(&qdev->timer, jiffies + (5*HZ));
 ql_link_off(qdev);
 ql_display_dev_info(ndev);
 atomic_set(&qdev->lb_count, 0);
 cards_found++;
 return 0;
}
