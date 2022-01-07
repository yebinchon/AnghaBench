
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct musb {int dummy; } ;
struct dma_channel {struct cppi41_dma_channel* private_data; } ;
struct TYPE_4__ {struct musb* musb; } ;
struct cppi41_dma_controller {TYPE_1__ controller; } ;
struct cppi41_dma_channel {scalar_t__ is_tx; TYPE_3__* hw_ep; struct cppi41_dma_controller* controller; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_2__ ep_in; } ;


 scalar_t__ USB_ENDPOINT_XFER_BULK ;
 int WARN_ON (int) ;
 scalar_t__ is_host_active (struct musb*) ;

__attribute__((used)) static int cppi41_is_compatible(struct dma_channel *channel, u16 maxpacket,
  void *buf, u32 length)
{
 struct cppi41_dma_channel *cppi41_channel = channel->private_data;
 struct cppi41_dma_controller *controller = cppi41_channel->controller;
 struct musb *musb = controller->controller.musb;

 if (is_host_active(musb)) {
  WARN_ON(1);
  return 1;
 }
 if (cppi41_channel->hw_ep->ep_in.type != USB_ENDPOINT_XFER_BULK)
  return 0;
 if (cppi41_channel->is_tx)
  return 1;

 return 0;
}
