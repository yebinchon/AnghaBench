
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtd_private {scalar_t__ ai_count; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ mmio; struct rtd_private* private; } ;


 scalar_t__ LAS0_ADC_CONVERSION ;
 scalar_t__ LAS0_ADC_FIFO_CLEAR ;
 scalar_t__ LAS0_IT ;
 scalar_t__ LAS0_PACER ;
 scalar_t__ LAS0_PACER_STOP ;
 int writel (int ,scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int rtd_ai_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct rtd_private *devpriv = dev->private;


 writel(0, dev->mmio + LAS0_PACER_STOP);
 writel(0, dev->mmio + LAS0_PACER);
 writel(0, dev->mmio + LAS0_ADC_CONVERSION);
 writew(0, dev->mmio + LAS0_IT);
 devpriv->ai_count = 0;
 writel(0, dev->mmio + LAS0_ADC_FIFO_CLEAR);
 return 0;
}
