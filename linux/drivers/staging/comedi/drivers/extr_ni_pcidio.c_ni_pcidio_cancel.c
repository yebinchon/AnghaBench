
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ MASTER_DMA_AND_INTERRUPT_CONTROL ;
 int ni_pcidio_release_di_mite_channel (struct comedi_device*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int ni_pcidio_cancel(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 writeb(0x00, dev->mmio + MASTER_DMA_AND_INTERRUPT_CONTROL);
 ni_pcidio_release_di_mite_channel(dev);

 return 0;
}
