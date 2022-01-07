
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct cb_pcidda_private* private; } ;
struct cb_pcidda_private {scalar_t__ daqio; } ;


 scalar_t__ DACALIBRATION1 ;
 int SERIAL_OUT_BIT ;
 int inw_p (scalar_t__) ;

__attribute__((used)) static unsigned int cb_pcidda_serial_in(struct comedi_device *dev)
{
 struct cb_pcidda_private *devpriv = dev->private;
 unsigned int value = 0;
 int i;
 const int value_width = 16;

 for (i = 1; i <= value_width; i++) {

  if (inw_p(devpriv->daqio + DACALIBRATION1) & SERIAL_OUT_BIT)
   value |= 1 << (value_width - i);
 }

 return value;
}
