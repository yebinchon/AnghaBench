
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_vif {struct wilc* wilc; } ;
struct wilc {scalar_t__ close; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int netdev_err (struct net_device*,char*) ;
 struct wilc_vif* netdev_priv (void*) ;
 int wilc_handle_isr (struct wilc*) ;

__attribute__((used)) static irqreturn_t isr_bh_routine(int irq, void *userdata)
{
 struct net_device *dev = userdata;
 struct wilc_vif *vif = netdev_priv(userdata);
 struct wilc *wilc = vif->wilc;

 if (wilc->close) {
  netdev_err(dev, "Can't handle BH interrupt\n");
  return IRQ_HANDLED;
 }

 wilc_handle_isr(wilc);

 return IRQ_HANDLED;
}
