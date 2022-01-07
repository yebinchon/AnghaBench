
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct cb_pcidda_private* private; } ;
struct cb_pcidda_private {scalar_t__ daqio; int dac_cal1_bits; } ;


 scalar_t__ DACALIBRATION1 ;
 int SERIAL_IN_BIT ;
 int outw_p (int ,scalar_t__) ;

__attribute__((used)) static void cb_pcidda_serial_out(struct comedi_device *dev, unsigned int value,
     unsigned int num_bits)
{
 struct cb_pcidda_private *devpriv = dev->private;
 int i;

 for (i = 1; i <= num_bits; i++) {

  if (value & (1 << (num_bits - i)))
   devpriv->dac_cal1_bits |= SERIAL_IN_BIT;
  else
   devpriv->dac_cal1_bits &= ~SERIAL_IN_BIT;
  outw_p(devpriv->dac_cal1_bits, devpriv->daqio + DACALIBRATION1);
 }
}
