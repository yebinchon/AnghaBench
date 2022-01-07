
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_vif {struct wilc* wilc; } ;
struct wilc {int dev_irq_num; int gpio_irq; } ;
struct net_device {int dummy; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int gpiod_direction_input (int ) ;
 int gpiod_to_irq (int ) ;
 int isr_bh_routine ;
 int isr_uh_routine ;
 int netdev_dbg (struct net_device*,char*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int request_threaded_irq (int ,int ,int ,int,char*,struct net_device*) ;

__attribute__((used)) static int init_irq(struct net_device *dev)
{
 int ret = 0;
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc *wl = vif->wilc;

 ret = gpiod_direction_input(wl->gpio_irq);
 if (ret) {
  netdev_err(dev, "could not obtain gpio for WILC_INTR\n");
  return ret;
 }

 wl->dev_irq_num = gpiod_to_irq(wl->gpio_irq);

 ret = request_threaded_irq(wl->dev_irq_num, isr_uh_routine,
       isr_bh_routine,
       IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
       "WILC_IRQ", dev);
 if (ret < 0)
  netdev_err(dev, "Failed to request IRQ\n");
 else
  netdev_dbg(dev, "IRQ request succeeded IRQ-NUM= %d\n",
      wl->dev_irq_num);

 return ret;
}
