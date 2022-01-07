
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {struct usbhs_pipe* pipe; } ;
struct usbhs_pipe_info {int (* dma_map_ctrl ) (int ,struct usbhs_pkt*,int) ;} ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int dummy; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int dev; } ;


 int stub1 (int ,struct usbhs_pkt*,int) ;
 struct usbhs_fifo* usbhs_pipe_to_fifo (struct usbhs_pipe*) ;
 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;
 struct usbhs_pipe_info* usbhs_priv_to_pipeinfo (struct usbhs_priv*) ;
 struct dma_chan* usbhsf_dma_chan_get (struct usbhs_fifo*,struct usbhs_pkt*) ;

__attribute__((used)) static int __usbhsf_dma_map_ctrl(struct usbhs_pkt *pkt, int map)
{
 struct usbhs_pipe *pipe = pkt->pipe;
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);
 struct usbhs_pipe_info *info = usbhs_priv_to_pipeinfo(priv);
 struct usbhs_fifo *fifo = usbhs_pipe_to_fifo(pipe);
 struct dma_chan *chan = usbhsf_dma_chan_get(fifo, pkt);

 return info->dma_map_ctrl(chan->device->dev, pkt, map);
}
