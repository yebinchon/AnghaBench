
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int dummy; } ;
struct dma_chan {int dummy; } ;


 int __usbhsf_pkt_del (struct usbhs_pkt*) ;
 struct usbhs_pkt* __usbhsf_pkt_get (struct usbhs_pipe*) ;
 int dmaengine_terminate_all (struct dma_chan*) ;
 int usbhs_lock (struct usbhs_priv*,unsigned long) ;
 int usbhs_pipe_clear_without_sequence (struct usbhs_pipe*,int ,int ) ;
 int usbhs_pipe_disable (struct usbhs_pipe*) ;
 struct usbhs_fifo* usbhs_pipe_to_fifo (struct usbhs_pipe*) ;
 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;
 int usbhs_unlock (struct usbhs_priv*,unsigned long) ;
 struct dma_chan* usbhsf_dma_chan_get (struct usbhs_fifo*,struct usbhs_pkt*) ;
 int usbhsf_dma_unmap (struct usbhs_pkt*) ;
 int usbhsf_fifo_unselect (struct usbhs_pipe*,struct usbhs_fifo*) ;

struct usbhs_pkt *usbhs_pkt_pop(struct usbhs_pipe *pipe, struct usbhs_pkt *pkt)
{
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);
 struct usbhs_fifo *fifo = usbhs_pipe_to_fifo(pipe);
 unsigned long flags;


 usbhs_lock(priv, flags);

 usbhs_pipe_disable(pipe);

 if (!pkt)
  pkt = __usbhsf_pkt_get(pipe);

 if (pkt) {
  struct dma_chan *chan = ((void*)0);

  if (fifo)
   chan = usbhsf_dma_chan_get(fifo, pkt);
  if (chan) {
   dmaengine_terminate_all(chan);
   usbhsf_dma_unmap(pkt);
  }

  usbhs_pipe_clear_without_sequence(pipe, 0, 0);

  __usbhsf_pkt_del(pkt);
 }

 if (fifo)
  usbhsf_fifo_unselect(pipe, fifo);

 usbhs_unlock(priv, flags);


 return pkt;
}
