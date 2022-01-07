
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int serial_interval_ns; int dio_control; int dio_output; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct ni_private* private; } ;


 int NISTC_DIO_CTRL_REG ;
 int NISTC_DIO_IN_REG ;
 int NISTC_DIO_OUT_REG ;
 int NISTC_DIO_SDCLK ;
 int NISTC_DIO_SDIN ;
 int NISTC_DIO_SDOUT ;
 int ni_stc_readw (struct comedi_device*,int ) ;
 int ni_stc_writew (struct comedi_device*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int ni_serial_sw_readwrite8(struct comedi_device *dev,
       struct comedi_subdevice *s,
       unsigned char data_out,
       unsigned char *data_in)
{
 struct ni_private *devpriv = dev->private;
 unsigned char mask, input = 0;


 udelay((devpriv->serial_interval_ns + 999) / 1000);

 for (mask = 0x80; mask; mask >>= 1) {





  devpriv->dio_output &= ~NISTC_DIO_SDOUT;
  if (data_out & mask)
   devpriv->dio_output |= NISTC_DIO_SDOUT;
  ni_stc_writew(dev, devpriv->dio_output, NISTC_DIO_OUT_REG);





  devpriv->dio_control |= NISTC_DIO_SDCLK;
  ni_stc_writew(dev, devpriv->dio_control, NISTC_DIO_CTRL_REG);

  udelay((devpriv->serial_interval_ns + 999) / 2000);

  devpriv->dio_control &= ~NISTC_DIO_SDCLK;
  ni_stc_writew(dev, devpriv->dio_control, NISTC_DIO_CTRL_REG);

  udelay((devpriv->serial_interval_ns + 999) / 2000);


  if (ni_stc_readw(dev, NISTC_DIO_IN_REG) & NISTC_DIO_SDIN)
   input |= mask;
 }

 if (data_in)
  *data_in = input;

 return 0;
}
