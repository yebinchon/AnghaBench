
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ type; } ;
struct musb_hw_ep {TYPE_2__ ep_in; TYPE_1__* out_qh; struct musb* musb; } ;
struct TYPE_7__ {scalar_t__ speed; } ;
struct musb {int port1_status; int lock; TYPE_3__ g; } ;
struct dmaengine_result {scalar_t__ result; } ;
struct dma_tx_state {scalar_t__ residue; } ;
struct dma_channel {struct cppi41_dma_channel* private_data; } ;
struct TYPE_8__ {int (* dma_callback ) (TYPE_4__*) ;} ;
struct cppi41_dma_controller {int early_tx; int early_tx_list; TYPE_4__ controller; } ;
struct cppi41_dma_channel {scalar_t__ prog_len; scalar_t__ transferred; int total_len; scalar_t__ packet_sz; int tx_check; scalar_t__ is_tx; int cookie; int dc; struct cppi41_dma_controller* controller; struct musb_hw_ep* hw_ep; } ;
struct TYPE_5__ {scalar_t__ type; } ;


 scalar_t__ DMA_TRANS_ABORTED ;
 int HRTIMER_MODE_REL ;
 unsigned long NSEC_PER_USEC ;
 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 int USB_PORT_STAT_HIGH_SPEED ;
 scalar_t__ USB_SPEED_HIGH ;
 int cppi41_trans_done (struct cppi41_dma_channel*) ;
 int cpu_relax () ;
 int dmaengine_tx_status (int ,int ,struct dma_tx_state*) ;
 int hrtimer_is_queued (int *) ;
 int hrtimer_start_range_ns (int *,unsigned long,int,int ) ;
 scalar_t__ is_host_active (struct musb*) ;
 int list_add_tail (int *,int *) ;
 int musb_is_tx_fifo_empty (struct musb_hw_ep*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_4__*) ;
 int trace_musb_cppi41_gb (struct cppi41_dma_channel*) ;
 int update_rx_toggle (struct cppi41_dma_channel*) ;

__attribute__((used)) static void cppi41_dma_callback(void *private_data,
    const struct dmaengine_result *result)
{
 struct dma_channel *channel = private_data;
 struct cppi41_dma_channel *cppi41_channel = channel->private_data;
 struct musb_hw_ep *hw_ep = cppi41_channel->hw_ep;
 struct cppi41_dma_controller *controller;
 struct musb *musb = hw_ep->musb;
 unsigned long flags;
 struct dma_tx_state txstate;
 u32 transferred;
 int is_hs = 0;
 bool empty;

 controller = cppi41_channel->controller;
 if (controller->controller.dma_callback)
  controller->controller.dma_callback(&controller->controller);

 if (result->result == DMA_TRANS_ABORTED)
  return;

 spin_lock_irqsave(&musb->lock, flags);

 dmaengine_tx_status(cppi41_channel->dc, cppi41_channel->cookie,
   &txstate);
 transferred = cppi41_channel->prog_len - txstate.residue;
 cppi41_channel->transferred += transferred;

 trace_musb_cppi41_gb(cppi41_channel);
 update_rx_toggle(cppi41_channel);

 if (cppi41_channel->transferred == cppi41_channel->total_len ||
   transferred < cppi41_channel->packet_sz)
  cppi41_channel->prog_len = 0;

 if (cppi41_channel->is_tx) {
  u8 type;

  if (is_host_active(musb))
   type = hw_ep->out_qh->type;
  else
   type = hw_ep->ep_in.type;

  if (type == USB_ENDPOINT_XFER_ISOC)
   empty = 1;
  else
   empty = musb_is_tx_fifo_empty(hw_ep);
 }

 if (!cppi41_channel->is_tx || empty) {
  cppi41_trans_done(cppi41_channel);
  goto out;
 }
 if (is_host_active(musb)) {
  if (musb->port1_status & USB_PORT_STAT_HIGH_SPEED)
   is_hs = 1;
 } else {
  if (musb->g.speed == USB_SPEED_HIGH)
   is_hs = 1;
 }
 if (is_hs) {
  unsigned wait = 25;

  do {
   empty = musb_is_tx_fifo_empty(hw_ep);
   if (empty) {
    cppi41_trans_done(cppi41_channel);
    goto out;
   }
   wait--;
   if (!wait)
    break;
   cpu_relax();
  } while (1);
 }
 list_add_tail(&cppi41_channel->tx_check,
   &controller->early_tx_list);
 if (!hrtimer_is_queued(&controller->early_tx)) {
  unsigned long usecs = cppi41_channel->total_len / 10;

  hrtimer_start_range_ns(&controller->early_tx,
           usecs * NSEC_PER_USEC,
           20 * NSEC_PER_USEC,
           HRTIMER_MODE_REL);
 }

out:
 spin_unlock_irqrestore(&musb->lock, flags);
}
