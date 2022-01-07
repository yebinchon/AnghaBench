
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ NI6527_FILT_ENA_REG (int) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static void ni6527_set_filter_enable(struct comedi_device *dev,
         unsigned int val)
{
 writeb(val & 0xff, dev->mmio + NI6527_FILT_ENA_REG(0));
 writeb((val >> 8) & 0xff, dev->mmio + NI6527_FILT_ENA_REG(1));
 writeb((val >> 16) & 0xff, dev->mmio + NI6527_FILT_ENA_REG(2));
}
