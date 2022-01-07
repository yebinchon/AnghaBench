
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ BOARD_CONTROL_REG ;
 scalar_t__ INTERRUPT_CONTROL_REG ;
 int gsc_hpdi_abort_dma (struct comedi_device*,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int gsc_hpdi_cancel(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 writel(0, dev->mmio + BOARD_CONTROL_REG);
 writel(0, dev->mmio + INTERRUPT_CONTROL_REG);

 gsc_hpdi_abort_dma(dev, 0);

 return 0;
}
