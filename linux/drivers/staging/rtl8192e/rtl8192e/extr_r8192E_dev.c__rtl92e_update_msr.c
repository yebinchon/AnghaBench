
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct r8192_priv {TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
typedef enum led_ctl_mode { ____Placeholder_led_ctl_mode } led_ctl_mode ;
struct TYPE_2__ {int iw_mode; int (* LedControlHandler ) (struct net_device*,int) ;int state; } ;





 int LED_CTL_LINK ;
 int LED_CTL_NO_LINK ;
 int MSR ;
 int MSR_LINK_ADHOC ;
 int MSR_LINK_MANAGED ;
 int MSR_LINK_MASK ;
 int MSR_LINK_MASTER ;
 int MSR_LINK_NONE ;
 int MSR_LINK_SHIFT ;
 int RTLLIB_LINKED ;
 int rtl92e_readb (struct net_device*,int ) ;
 int rtl92e_writeb (struct net_device*,int ,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int stub1 (struct net_device*,int) ;

__attribute__((used)) static void _rtl92e_update_msr(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 u8 msr;
 enum led_ctl_mode LedAction = LED_CTL_NO_LINK;

 msr = rtl92e_readb(dev, MSR);
 msr &= ~MSR_LINK_MASK;

 switch (priv->rtllib->iw_mode) {
 case 129:
  if (priv->rtllib->state == RTLLIB_LINKED)
   msr |= (MSR_LINK_MANAGED << MSR_LINK_SHIFT);
  else
   msr |= (MSR_LINK_NONE << MSR_LINK_SHIFT);
  LedAction = LED_CTL_LINK;
  break;
 case 130:
  if (priv->rtllib->state == RTLLIB_LINKED)
   msr |= (MSR_LINK_ADHOC << MSR_LINK_SHIFT);
  else
   msr |= (MSR_LINK_NONE << MSR_LINK_SHIFT);
  break;
 case 128:
  if (priv->rtllib->state == RTLLIB_LINKED)
   msr |= (MSR_LINK_MASTER << MSR_LINK_SHIFT);
  else
   msr |= (MSR_LINK_NONE << MSR_LINK_SHIFT);
  break;
 default:
  break;
 }

 rtl92e_writeb(dev, MSR, msr);
 if (priv->rtllib->LedControlHandler)
  priv->rtllib->LedControlHandler(dev, LedAction);
}
