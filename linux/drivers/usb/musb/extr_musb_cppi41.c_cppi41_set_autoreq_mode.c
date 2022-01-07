
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {TYPE_1__* musb; } ;
struct cppi41_dma_controller {scalar_t__ auto_req; int autoreq_reg; TYPE_2__ controller; } ;
struct cppi41_dma_channel {scalar_t__ port_num; struct cppi41_dma_controller* controller; } ;
struct TYPE_3__ {int ctrl_base; } ;


 int musb_writel (int ,int ,scalar_t__) ;
 scalar_t__ update_ep_mode (scalar_t__,unsigned int,scalar_t__) ;

__attribute__((used)) static void cppi41_set_autoreq_mode(struct cppi41_dma_channel *cppi41_channel,
  unsigned mode)
{
 struct cppi41_dma_controller *controller = cppi41_channel->controller;
 u32 port;
 u32 new_mode;
 u32 old_mode;

 old_mode = controller->auto_req;
 port = cppi41_channel->port_num;
 new_mode = update_ep_mode(port, mode, old_mode);

 if (new_mode == old_mode)
  return;
 controller->auto_req = new_mode;
 musb_writel(controller->controller.musb->ctrl_base,
      controller->autoreq_reg, new_mode);
}
