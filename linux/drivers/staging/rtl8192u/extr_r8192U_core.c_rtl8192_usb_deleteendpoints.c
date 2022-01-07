
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct r8192_priv {TYPE_1__** pp_rxskb; TYPE_1__** oldaddr; TYPE_1__** rx_urb; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__** transfer_buffer; } ;


 int MAX_RX_URB ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int kfree (TYPE_1__**) ;
 int usb_free_urb (TYPE_1__*) ;
 int usb_kill_urb (TYPE_1__*) ;

void rtl8192_usb_deleteendpoints(struct net_device *dev)
{
 int i;
 struct r8192_priv *priv = ieee80211_priv(dev);



 if (priv->rx_urb) {
  for (i = 0; i < (MAX_RX_URB + 1); i++) {
   usb_kill_urb(priv->rx_urb[i]);
   kfree(priv->rx_urb[i]->transfer_buffer);
   usb_free_urb(priv->rx_urb[i]);
  }
  kfree(priv->rx_urb);
  priv->rx_urb = ((void*)0);
 }
}
