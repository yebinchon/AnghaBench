
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt_stats {int dummy; } ;
struct r8192_priv {int irq; int gpio_polling_timer; int watch_dog_timer; TYPE_1__* ops; int stats; } ;
struct net_device {int irq; int name; } ;
struct TYPE_2__ {int (* init_adapter_variable ) (struct net_device*) ;int (* get_eeprom_size ) (struct net_device*) ;} ;


 int COMP_INIT ;
 int IRQF_SHARED ;
 int RT_TRACE (int ,char*,int ) ;
 int _rtl92e_get_channel_map (struct net_device*) ;
 int _rtl92e_init_priv_constant (struct net_device*) ;
 int _rtl92e_init_priv_handler (struct net_device*) ;
 int _rtl92e_init_priv_lock (struct r8192_priv*) ;
 int _rtl92e_init_priv_task (struct net_device*) ;
 int _rtl92e_init_priv_variable (struct net_device*) ;
 int _rtl92e_irq ;
 scalar_t__ _rtl92e_pci_initdescring (struct net_device*) ;
 int _rtl92e_watchdog_timer_cb ;
 int free_irq (int ,struct net_device*) ;
 int memset (int *,int ,int) ;
 int netdev_err (struct net_device*,char*,...) ;
 scalar_t__ request_irq (int ,int ,int ,int ,struct net_device*) ;
 int rtl92e_check_rfctrl_gpio_timer ;
 int rtl92e_dm_init (struct net_device*) ;
 int rtl92e_irq_disable (struct net_device*) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static short _rtl92e_init(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 memset(&priv->stats, 0, sizeof(struct rt_stats));

 _rtl92e_init_priv_handler(dev);
 _rtl92e_init_priv_constant(dev);
 _rtl92e_init_priv_variable(dev);
 _rtl92e_init_priv_lock(priv);
 _rtl92e_init_priv_task(dev);
 priv->ops->get_eeprom_size(dev);
 priv->ops->init_adapter_variable(dev);
 _rtl92e_get_channel_map(dev);

 rtl92e_dm_init(dev);

 timer_setup(&priv->watch_dog_timer, _rtl92e_watchdog_timer_cb, 0);

 timer_setup(&priv->gpio_polling_timer, rtl92e_check_rfctrl_gpio_timer,
      0);

 rtl92e_irq_disable(dev);
 if (request_irq(dev->irq, _rtl92e_irq, IRQF_SHARED, dev->name, dev)) {
  netdev_err(dev, "Error allocating IRQ %d", dev->irq);
  return -1;
 }

 priv->irq = dev->irq;
 RT_TRACE(COMP_INIT, "IRQ %d\n", dev->irq);

 if (_rtl92e_pci_initdescring(dev) != 0) {
  netdev_err(dev, "Endopoints initialization failed");
  free_irq(dev->irq, dev);
  return -1;
 }

 return 0;
}
