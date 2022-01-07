
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {int pipe; } ;


 int BUG_ON (int ) ;
 int has_usb_dmac ;
 int usbhs_get_dparam (struct usbhs_priv*,int ) ;
 struct usbhs_priv* usbhs_pipe_to_priv (int ) ;
 int usbhsf_dma_try_pop_with_rx_irq (struct usbhs_pkt*,int*) ;

__attribute__((used)) static int usbhsf_dma_try_pop(struct usbhs_pkt *pkt, int *is_done)
{
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pkt->pipe);

 BUG_ON(usbhs_get_dparam(priv, has_usb_dmac));

 return usbhsf_dma_try_pop_with_rx_irq(pkt, is_done);
}
