
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pl022 {int virtbase; TYPE_3__* adev; TYPE_2__* cur_chip; TYPE_1__* cur_msg; int cur_transfer; int next_msg_cs_active; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {scalar_t__ enable_dma; } ;
struct TYPE_4__ {int status; int state; } ;


 int DISABLE_ALL_INTERRUPTS ;
 int EIO ;
 int ENABLE_ALL_INTERRUPTS ;
 int SSP_CHIP_SELECT ;
 int SSP_CR1 (int ) ;
 int SSP_CR1_MASK_SSE ;
 int SSP_IMSC (int ) ;
 int SSP_IMSC_MASK_RXIM ;
 int STATE_ERROR ;
 scalar_t__ configure_dma (struct pl022*) ;
 int dev_dbg (int *,char*) ;
 int giveback (struct pl022*) ;
 int pl022_cs_control (struct pl022*,int ) ;
 int readw (int ) ;
 scalar_t__ set_up_next_transfer (struct pl022*,int ) ;
 int writew (int,int ) ;

__attribute__((used)) static void do_interrupt_dma_transfer(struct pl022 *pl022)
{




 u32 irqflags = (u32)(ENABLE_ALL_INTERRUPTS & ~SSP_IMSC_MASK_RXIM);


 if (!pl022->next_msg_cs_active)
  pl022_cs_control(pl022, SSP_CHIP_SELECT);

 if (set_up_next_transfer(pl022, pl022->cur_transfer)) {

  pl022->cur_msg->state = STATE_ERROR;
  pl022->cur_msg->status = -EIO;
  giveback(pl022);
  return;
 }

 if (pl022->cur_chip->enable_dma) {

  if (configure_dma(pl022)) {
   dev_dbg(&pl022->adev->dev,
    "configuration of DMA failed, fall back to interrupt mode\n");
   goto err_config_dma;
  }

  irqflags = DISABLE_ALL_INTERRUPTS;
 }
err_config_dma:

 writew((readw(SSP_CR1(pl022->virtbase)) | SSP_CR1_MASK_SSE),
        SSP_CR1(pl022->virtbase));
 writew(irqflags, SSP_IMSC(pl022->virtbase));
}
