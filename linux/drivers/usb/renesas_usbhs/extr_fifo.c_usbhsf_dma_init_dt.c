
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_fifo {int * rx_chan; int * tx_chan; } ;
struct device {int dummy; } ;
typedef int name ;


 scalar_t__ IS_ERR (int *) ;
 void* dma_request_slave_channel_reason (struct device*,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void usbhsf_dma_init_dt(struct device *dev, struct usbhs_fifo *fifo,
          int channel)
{
 char name[16];






 snprintf(name, sizeof(name), "ch%d", channel);
 if (channel & 1) {
  fifo->tx_chan = dma_request_slave_channel_reason(dev, name);
  if (IS_ERR(fifo->tx_chan))
   fifo->tx_chan = ((void*)0);
 } else {
  fifo->rx_chan = dma_request_slave_channel_reason(dev, name);
  if (IS_ERR(fifo->rx_chan))
   fifo->rx_chan = ((void*)0);
 }
}
