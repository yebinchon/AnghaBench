
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {int length; int actual; int buf; int trans; TYPE_1__* handler; int work; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int dummy; } ;
struct TYPE_2__ {int (* prepare ) (struct usbhs_pkt*,int*) ;} ;


 int INIT_WORK (int *,int ) ;
 int USBHS_USB_DMAC_XFER_SIZE ;
 int USB_ENDPOINT_XFER_ISOC ;
 int has_usb_dmac ;
 int pio_dma_border ;
 int schedule_work (int *) ;
 int stub1 (struct usbhs_pkt*,int*) ;
 TYPE_1__ usbhs_fifo_pio_push_handler ;
 int usbhs_get_dparam (struct usbhs_priv*,int ) ;
 scalar_t__ usbhs_pipe_is_busy (struct usbhs_pipe*) ;
 scalar_t__ usbhs_pipe_is_running (struct usbhs_pipe*) ;
 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;
 scalar_t__ usbhs_pipe_type_is (struct usbhs_pipe*,int ) ;
 scalar_t__ usbhsf_dma_map (struct usbhs_pkt*) ;
 int usbhsf_dma_xfer_preparing (struct usbhs_pkt*) ;
 int usbhsf_fifo_select (struct usbhs_pipe*,struct usbhs_fifo*,int ) ;
 int usbhsf_fifo_unselect (struct usbhs_pipe*,struct usbhs_fifo*) ;
 struct usbhs_fifo* usbhsf_get_dma_fifo (struct usbhs_priv*,struct usbhs_pkt*) ;
 int usbhsf_tx_irq_ctrl (struct usbhs_pipe*,int ) ;
 int xfer_work ;

__attribute__((used)) static int usbhsf_dma_prepare_push(struct usbhs_pkt *pkt, int *is_done)
{
 struct usbhs_pipe *pipe = pkt->pipe;
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);
 struct usbhs_fifo *fifo;
 int len = pkt->length - pkt->actual;
 int ret;
 uintptr_t align_mask;

 if (usbhs_pipe_is_busy(pipe))
  return 0;


 if ((len < usbhs_get_dparam(priv, pio_dma_border)) ||
     usbhs_pipe_type_is(pipe, USB_ENDPOINT_XFER_ISOC))
  goto usbhsf_pio_prepare_push;


 if (!usbhs_get_dparam(priv, has_usb_dmac) && len & 0x7)
  goto usbhsf_pio_prepare_push;


 align_mask = usbhs_get_dparam(priv, has_usb_dmac) ?
     USBHS_USB_DMAC_XFER_SIZE - 1 : 0x7;
 if ((uintptr_t)(pkt->buf + pkt->actual) & align_mask)
  goto usbhsf_pio_prepare_push;


 if (usbhs_pipe_is_running(pipe))
  return 0;


 fifo = usbhsf_get_dma_fifo(priv, pkt);
 if (!fifo)
  goto usbhsf_pio_prepare_push;

 ret = usbhsf_fifo_select(pipe, fifo, 0);
 if (ret < 0)
  goto usbhsf_pio_prepare_push;

 if (usbhsf_dma_map(pkt) < 0)
  goto usbhsf_pio_prepare_push_unselect;

 pkt->trans = len;

 usbhsf_tx_irq_ctrl(pipe, 0);

 if (usbhs_get_dparam(priv, has_usb_dmac)) {
  usbhsf_dma_xfer_preparing(pkt);
 } else {
  INIT_WORK(&pkt->work, xfer_work);
  schedule_work(&pkt->work);
 }

 return 0;

usbhsf_pio_prepare_push_unselect:
 usbhsf_fifo_unselect(pipe, fifo);
usbhsf_pio_prepare_push:



 pkt->handler = &usbhs_fifo_pio_push_handler;

 return pkt->handler->prepare(pkt, is_done);
}
