
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int pipe; } ;
struct r8a66597_pipe_info {unsigned short pipenum; scalar_t__ type; scalar_t__ epnum; scalar_t__ dir_in; } ;
struct r8a66597_pipe {int fifoctr; struct r8a66597_pipe_info info; int fifosel; } ;
struct r8a66597_device {int dma_map; TYPE_2__* udev; } ;
struct r8a66597 {int dma_map; TYPE_1__* pdata; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ on_chip; } ;


 int BCLR ;
 unsigned short CURPIPE ;
 scalar_t__ R8A66597_INT ;
 int R8A66597_MAX_DMA_CHANNEL ;
 scalar_t__ USB_ENDPOINT_DIR_MASK ;
 int cfifo_change (struct r8a66597*,int ) ;
 int dev_info (int *,char*,int ,scalar_t__) ;
 unsigned short mbw_value (struct r8a66597*) ;
 int r8a66597_bset (struct r8a66597*,int ,int ) ;
 int r8a66597_mdfy (struct r8a66597*,unsigned short,unsigned short,int ) ;
 int r8a66597_reg_wait (struct r8a66597*,int ,unsigned short,unsigned short) ;
 int set_pipe_reg_addr (struct r8a66597_pipe*,int) ;
 int usb_pipedevice (int ) ;

__attribute__((used)) static void enable_r8a66597_pipe_dma(struct r8a66597 *r8a66597,
         struct r8a66597_device *dev,
         struct r8a66597_pipe *pipe,
         struct urb *urb)
{
 int i;
 struct r8a66597_pipe_info *info = &pipe->info;
 unsigned short mbw = mbw_value(r8a66597);


 if (r8a66597->pdata->on_chip)
  return;

 if ((pipe->info.pipenum != 0) && (info->type != R8A66597_INT)) {
  for (i = 0; i < R8A66597_MAX_DMA_CHANNEL; i++) {
   if ((r8a66597->dma_map & (1 << i)) != 0)
    continue;

   dev_info(&dev->udev->dev,
     "address %d, EndpointAddress 0x%02x use "
     "DMA FIFO\n", usb_pipedevice(urb->pipe),
     info->dir_in ?
      USB_ENDPOINT_DIR_MASK + info->epnum
     : info->epnum);

   r8a66597->dma_map |= 1 << i;
   dev->dma_map |= 1 << i;
   set_pipe_reg_addr(pipe, i);

   cfifo_change(r8a66597, 0);
   r8a66597_mdfy(r8a66597, mbw | pipe->info.pipenum,
          mbw | CURPIPE, pipe->fifosel);

   r8a66597_reg_wait(r8a66597, pipe->fifosel, CURPIPE,
       pipe->info.pipenum);
   r8a66597_bset(r8a66597, BCLR, pipe->fifoctr);
   break;
  }
 }
}
