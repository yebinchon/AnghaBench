
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct r8192_priv {scalar_t__ polling_timer_on; TYPE_2__* rtllib; int gpio_polling_timer; } ;
struct pci_dev {int dummy; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct TYPE_4__ {int bSupportRemoteWakeUp; } ;
struct TYPE_3__ {int (* ndo_open ) (struct net_device*) ;} ;


 int COMP_POWER ;
 int PCI_D0 ;
 int RF_CHANGE_BY_INIT ;
 int RT_TRACE (int ,char*) ;
 int eRfOn ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_info (struct net_device*,char*) ;
 int netif_device_attach (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_enable_wake (struct pci_dev*,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 int rtl92e_check_rfctrl_gpio_timer (int *) ;
 int rtl92e_set_rf_state (struct net_device*,int ,int ) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int stub1 (struct net_device*) ;

int rtl92e_resume(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct r8192_priv *priv = rtllib_priv(dev);
 int err;
 u32 val;

 netdev_info(dev, "================>r8192E resume call.\n");

 pci_set_power_state(pdev, PCI_D0);

 err = pci_enable_device(pdev);
 if (err) {
  netdev_err(dev, "pci_enable_device failed on resume\n");
  return err;
 }
 pci_restore_state(pdev);

 pci_read_config_dword(pdev, 0x40, &val);
 if ((val & 0x0000ff00) != 0)
  pci_write_config_dword(pdev, 0x40, val & 0xffff00ff);

 pci_enable_wake(pdev, PCI_D0, 0);

 if (priv->polling_timer_on == 0)
  rtl92e_check_rfctrl_gpio_timer(&priv->gpio_polling_timer);

 if (!netif_running(dev)) {
  netdev_info(dev,
       "RTL819XE:UI is open out of resume function\n");
  goto out;
 }

 netif_device_attach(dev);
 if (dev->netdev_ops->ndo_open)
  dev->netdev_ops->ndo_open(dev);

 if (!priv->rtllib->bSupportRemoteWakeUp)
  rtl92e_set_rf_state(dev, eRfOn, RF_CHANGE_BY_INIT);

out:
 RT_TRACE(COMP_POWER, "<================r8192E resume call.\n");
 return 0;
}
