
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct xlr_net_priv {int port_id; int mii_bus; int num_rx_desc; struct xlr_net_data* nd; int gpio_addr; int pcs_addr; int serdes_addr; int mii_addr; int tx_stnid; int phy_addr; struct xlr_adapter* adapter; int base_addr; struct net_device* ndev; struct platform_device* pdev; } ;
struct xlr_net_data {int gpio_addr; int pcs_addr; int serdes_addr; int mii_addr; int * tx_stnid; int * phy_addr; } ;
struct xlr_adapter {struct net_device** netdev; } ;
struct resource {int name; int start; } ;
struct TYPE_5__ {scalar_t__ platform_data; } ;
struct platform_device {int id; int num_resources; TYPE_1__ dev; } ;
struct net_device {int * ethtool_ops; int watchdog_timeo; int * netdev_ops; int irq; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ MAX_NUM_DESC_SPILL ;
 int PTR_ERR (int ) ;
 int SET_NETDEV_DEV (struct net_device*,TYPE_1__*) ;
 struct net_device* alloc_etherdev_mq (int,int) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct xlr_adapter* devm_kzalloc (TYPE_1__*,int,int ) ;
 int eth_hw_addr_random (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int mdiobus_free (int ) ;
 struct xlr_net_priv* netdev_priv (struct net_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct xlr_net_priv*) ;
 int pr_info (char*,int) ;
 int register_netdev (struct net_device*) ;
 scalar_t__ strcmp (int ,char*) ;
 int xlr_config_common (struct xlr_net_priv*) ;
 int xlr_config_fifo_spill_area (struct xlr_net_priv*) ;
 int xlr_config_parser (struct xlr_net_priv*) ;
 int xlr_config_pde (struct xlr_net_priv*) ;
 int xlr_ethtool_ops ;
 int xlr_gmac_init (struct xlr_net_priv*,struct platform_device*) ;
 int xlr_hw_set_mac_addr (struct net_device*) ;
 int xlr_netdev_ops ;
 int xlr_set_rx_mode (struct net_device*) ;

__attribute__((used)) static int xlr_net_probe(struct platform_device *pdev)
{
 struct xlr_net_priv *priv = ((void*)0);
 struct net_device *ndev;
 struct resource *res;
 struct xlr_adapter *adapter;
 int err, port;

 pr_info("XLR/XLS Ethernet Driver controller %d\n", pdev->id);



 adapter = devm_kzalloc(&pdev->dev, sizeof(*adapter), GFP_KERNEL);
 if (!adapter)
  return -ENOMEM;






 for (port = 0; port < pdev->num_resources / 2; port++) {
  ndev = alloc_etherdev_mq(sizeof(struct xlr_net_priv), 32);
  if (!ndev) {
   dev_err(&pdev->dev,
    "Allocation of Ethernet device failed\n");
   return -ENOMEM;
  }

  priv = netdev_priv(ndev);
  priv->pdev = pdev;
  priv->ndev = ndev;
  priv->port_id = (pdev->id * 4) + port;
  priv->nd = (struct xlr_net_data *)pdev->dev.platform_data;
  res = platform_get_resource(pdev, IORESOURCE_MEM, port);
  priv->base_addr = devm_ioremap_resource(&pdev->dev, res);
  if (IS_ERR(priv->base_addr)) {
   err = PTR_ERR(priv->base_addr);
   goto err_gmac;
  }
  priv->adapter = adapter;
  adapter->netdev[port] = ndev;

  res = platform_get_resource(pdev, IORESOURCE_IRQ, port);
  if (!res) {
   dev_err(&pdev->dev, "No irq resource for MAC %d\n",
    priv->port_id);
   err = -ENODEV;
   goto err_gmac;
  }

  ndev->irq = res->start;

  priv->phy_addr = priv->nd->phy_addr[port];
  priv->tx_stnid = priv->nd->tx_stnid[port];
  priv->mii_addr = priv->nd->mii_addr;
  priv->serdes_addr = priv->nd->serdes_addr;
  priv->pcs_addr = priv->nd->pcs_addr;
  priv->gpio_addr = priv->nd->gpio_addr;

  ndev->netdev_ops = &xlr_netdev_ops;
  ndev->watchdog_timeo = HZ;


  eth_hw_addr_random(ndev);
  xlr_hw_set_mac_addr(ndev);
  xlr_set_rx_mode(ndev);

  priv->num_rx_desc += MAX_NUM_DESC_SPILL;
  ndev->ethtool_ops = &xlr_ethtool_ops;
  SET_NETDEV_DEV(ndev, &pdev->dev);

  xlr_config_fifo_spill_area(priv);

  xlr_config_pde(priv);
  xlr_config_parser(priv);


  if (strcmp(res->name, "gmac") == 0) {
   err = xlr_gmac_init(priv, pdev);
   if (err) {
    dev_err(&pdev->dev, "gmac%d init failed\n",
     priv->port_id);
    goto err_gmac;
   }
  }

  if (priv->port_id == 0 || priv->port_id == 4) {
   err = xlr_config_common(priv);
   if (err)
    goto err_netdev;
  }

  err = register_netdev(ndev);
  if (err) {
   dev_err(&pdev->dev,
    "Registering netdev failed for gmac%d\n",
    priv->port_id);
   goto err_netdev;
  }
  platform_set_drvdata(pdev, priv);
 }

 return 0;

err_netdev:
 mdiobus_free(priv->mii_bus);
err_gmac:
 free_netdev(ndev);
 return err;
}
