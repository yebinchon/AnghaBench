
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_vif {struct wilc* wilc; } ;
struct wilc {scalar_t__ close; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int netdev_err (struct net_device*,char*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;

__attribute__((used)) static irqreturn_t isr_uh_routine(int irq, void *user_data)
{
 struct net_device *dev = user_data;
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc *wilc = vif->wilc;

 if (wilc->close) {
  netdev_err(dev, "Can't handle UH interrupt\n");
  return IRQ_HANDLED;
 }
 return IRQ_WAKE_THREAD;
}
