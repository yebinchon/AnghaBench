
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wilc_vif {struct wilc* wilc; } ;
struct wilc {int * tx_buffer; int * rx_buffer; TYPE_1__* hif_func; scalar_t__ quit; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* hif_init ) (struct wilc*,int) ;} ;


 int EIO ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int WILC_RX_BUFF_SIZE ;
 int WILC_TX_BUFF_SIZE ;
 int init_chip (struct net_device*) ;
 int kfree (int *) ;
 void* kmalloc (int ,int ) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int stub1 (struct wilc*,int) ;

int wilc_wlan_init(struct net_device *dev)
{
 int ret = 0;
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc *wilc;

 wilc = vif->wilc;

 wilc->quit = 0;

 if (!wilc->hif_func->hif_init(wilc, 0)) {
  ret = -EIO;
  goto fail;
 }

 if (!wilc->tx_buffer)
  wilc->tx_buffer = kmalloc(WILC_TX_BUFF_SIZE, GFP_KERNEL);

 if (!wilc->tx_buffer) {
  ret = -ENOBUFS;
  goto fail;
 }

 if (!wilc->rx_buffer)
  wilc->rx_buffer = kmalloc(WILC_RX_BUFF_SIZE, GFP_KERNEL);

 if (!wilc->rx_buffer) {
  ret = -ENOBUFS;
  goto fail;
 }

 if (!init_chip(dev)) {
  ret = -EIO;
  goto fail;
 }

 return 1;

fail:

 kfree(wilc->rx_buffer);
 wilc->rx_buffer = ((void*)0);
 kfree(wilc->tx_buffer);
 wilc->tx_buffer = ((void*)0);

 return ret;
}
