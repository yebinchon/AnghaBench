
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct urb {int dummy; } ;
struct sk_buff {int dummy; } ;
struct r8192_priv {TYPE_1__** rx_urb; int * pp_rxskb; void* oldaddr; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int transfer_buffer_length; void* transfer_buffer; } ;


 int DMESGE (char*) ;
 short ENOMEM ;
 int GFP_KERNEL ;
 int MAX_RX_URB ;
 int RX_URB_SIZE ;
 int i ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int * kcalloc (int,int,int ) ;
 int kfree (TYPE_1__**) ;
 void* kmalloc (int,int ) ;
 TYPE_1__** kmalloc_array (int,int,int ) ;
 int memset (TYPE_1__**,int ,int) ;
 int netdev_dbg (struct net_device*,char*) ;
 void* usb_alloc_urb (int ,int ) ;

__attribute__((used)) static short rtl8192_usb_initendpoints(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 priv->rx_urb = kmalloc_array(MAX_RX_URB + 1, sizeof(struct urb *),
         GFP_KERNEL);
 if (!priv->rx_urb)
  return -ENOMEM;


 for (i = 0; i < (MAX_RX_URB + 1); i++) {
  priv->rx_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
  if (!priv->rx_urb[i])
   return -ENOMEM;

  priv->rx_urb[i]->transfer_buffer =
   kmalloc(RX_URB_SIZE, GFP_KERNEL);
  if (!priv->rx_urb[i]->transfer_buffer)
   return -ENOMEM;

  priv->rx_urb[i]->transfer_buffer_length = RX_URB_SIZE;
 }
 memset(priv->rx_urb, 0, sizeof(struct urb *) * MAX_RX_URB);
 priv->pp_rxskb = kcalloc(MAX_RX_URB, sizeof(struct sk_buff *),
     GFP_KERNEL);
 if (!priv->pp_rxskb) {
  kfree(priv->rx_urb);

  priv->pp_rxskb = ((void*)0);
  priv->rx_urb = ((void*)0);

  DMESGE("Endpoint Alloc Failure");
  return -ENOMEM;
 }

 netdev_dbg(dev, "End of initendpoints\n");
 return 0;
}
