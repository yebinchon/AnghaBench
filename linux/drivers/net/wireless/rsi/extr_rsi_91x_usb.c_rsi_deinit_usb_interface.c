
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rsi_hw {TYPE_1__* priv; scalar_t__ rsi_dev; } ;
struct rsi_91x_usbdev {int tx_buffer; TYPE_2__* rx_cb; int rx_thread; } ;
struct TYPE_4__ {int rx_urb; } ;
struct TYPE_3__ {int coex_mode; } ;


 int kfree (int ) ;
 int rsi_kill_thread (int *) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void rsi_deinit_usb_interface(struct rsi_hw *adapter)
{
 struct rsi_91x_usbdev *dev = (struct rsi_91x_usbdev *)adapter->rsi_dev;

 rsi_kill_thread(&dev->rx_thread);

 usb_free_urb(dev->rx_cb[0].rx_urb);
 if (adapter->priv->coex_mode > 1)
  usb_free_urb(dev->rx_cb[1].rx_urb);

 kfree(dev->tx_buffer);
}
