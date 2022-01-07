
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ MASTER_DMA_AND_INTERRUPT_CONTROL ;
 scalar_t__ PORT_IO (int ) ;
 scalar_t__ PORT_PIN_DIRECTIONS (int ) ;
 scalar_t__ PORT_PIN_MASK (int ) ;
 int writeb (int ,scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void nidio_reset_board(struct comedi_device *dev)
{
 writel(0, dev->mmio + PORT_IO(0));
 writel(0, dev->mmio + PORT_PIN_DIRECTIONS(0));
 writel(0, dev->mmio + PORT_PIN_MASK(0));


 writeb(0, dev->mmio + MASTER_DMA_AND_INTERRUPT_CONTROL);
}
