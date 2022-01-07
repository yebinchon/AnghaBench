
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ LAS0_ADC_FIFO_CLEAR ;
 scalar_t__ LAS0_CGT_CLEAR ;
 scalar_t__ LAS0_DAC_RESET (int) ;
 scalar_t__ LAS0_DIO_STATUS ;
 scalar_t__ LAS0_OVERRUN ;
 int rtd_reset (struct comedi_device*) ;
 int writel (int ,scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void rtd_init_board(struct comedi_device *dev)
{
 rtd_reset(dev);

 writel(0, dev->mmio + LAS0_OVERRUN);
 writel(0, dev->mmio + LAS0_CGT_CLEAR);
 writel(0, dev->mmio + LAS0_ADC_FIFO_CLEAR);
 writel(0, dev->mmio + LAS0_DAC_RESET(0));
 writel(0, dev->mmio + LAS0_DAC_RESET(1));

 writew(0, dev->mmio + LAS0_DIO_STATUS);

}
