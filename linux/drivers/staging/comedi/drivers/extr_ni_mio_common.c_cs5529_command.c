
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int class_dev; } ;


 int NI67XX_CAL_CMD_REG ;
 int NI67XX_CAL_STATUS_BUSY ;
 int NI67XX_CAL_STATUS_REG ;
 int dev_err (int ,char*) ;
 int ni_ao_win_inw (struct comedi_device*,int ) ;
 int ni_ao_win_outw (struct comedi_device*,unsigned short,int ) ;
 int udelay (int) ;

__attribute__((used)) static void cs5529_command(struct comedi_device *dev, unsigned short value)
{
 static const int timeout = 100;
 int i;

 ni_ao_win_outw(dev, value, NI67XX_CAL_CMD_REG);




 for (i = 0; i < timeout; i++) {
  if (ni_ao_win_inw(dev, NI67XX_CAL_STATUS_REG) &
      NI67XX_CAL_STATUS_BUSY)
   break;
  udelay(1);
 }
 if (i == timeout)
  dev_err(dev->class_dev,
   "possible problem - never saw adc go busy?\n");
}
