
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_private {scalar_t__ main_iobase; } ;
struct comedi_device {struct pcidas64_private* private; } ;


 scalar_t__ CALIBRATION_REG ;
 unsigned int SELECT_8402_64XX_BIT ;
 unsigned int SERIAL_CLOCK_BIT ;
 unsigned int SERIAL_DATA_IN_BIT ;
 int udelay (int const) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static void ad8402_write(struct comedi_device *dev, unsigned int channel,
    unsigned int value)
{
 struct pcidas64_private *devpriv = dev->private;
 static const int bitstream_length = 10;
 unsigned int bit, register_bits;
 unsigned int bitstream = ((channel & 0x3) << 8) | (value & 0xff);
 static const int ad8402_udelay = 1;

 register_bits = SELECT_8402_64XX_BIT;
 udelay(ad8402_udelay);
 writew(register_bits, devpriv->main_iobase + CALIBRATION_REG);

 for (bit = 1 << (bitstream_length - 1); bit; bit >>= 1) {
  if (bitstream & bit)
   register_bits |= SERIAL_DATA_IN_BIT;
  else
   register_bits &= ~SERIAL_DATA_IN_BIT;
  udelay(ad8402_udelay);
  writew(register_bits, devpriv->main_iobase + CALIBRATION_REG);
  udelay(ad8402_udelay);
  writew(register_bits | SERIAL_CLOCK_BIT,
         devpriv->main_iobase + CALIBRATION_REG);
 }

 udelay(ad8402_udelay);
 writew(0, devpriv->main_iobase + CALIBRATION_REG);
}
