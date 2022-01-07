
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int cmd5; int (* write_byte ) (struct comedi_device*,int,int ) ;} ;
struct comedi_device {struct labpc_private* private; } ;


 int CMD5_EEPROMCS ;
 int CMD5_REG ;
 int CMD5_WRTPRT ;
 int labpc_serial_out (struct comedi_device*,int const,int const) ;
 int stub1 (struct comedi_device*,int,int ) ;
 int stub2 (struct comedi_device*,int,int ) ;
 int stub3 (struct comedi_device*,int,int ) ;
 int stub4 (struct comedi_device*,int,int ) ;
 int stub5 (struct comedi_device*,int,int ) ;
 int stub6 (struct comedi_device*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void labpc_eeprom_write(struct comedi_device *dev,
          unsigned int address, unsigned int value)
{
 struct labpc_private *devpriv = dev->private;
 const int write_enable_instruction = 0x6;
 const int write_instruction = 0x2;
 const int write_length = 8;


 devpriv->cmd5 &= ~CMD5_EEPROMCS;
 udelay(1);
 devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);
 devpriv->cmd5 |= (CMD5_EEPROMCS | CMD5_WRTPRT);
 udelay(1);
 devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);


 labpc_serial_out(dev, write_enable_instruction, write_length);
 devpriv->cmd5 &= ~CMD5_EEPROMCS;
 udelay(1);
 devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);


 devpriv->cmd5 |= CMD5_EEPROMCS;
 udelay(1);
 devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);
 labpc_serial_out(dev, write_instruction, write_length);

 labpc_serial_out(dev, address, write_length);

 labpc_serial_out(dev, value, write_length);
 devpriv->cmd5 &= ~CMD5_EEPROMCS;
 udelay(1);
 devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);


 devpriv->cmd5 &= ~(CMD5_EEPROMCS | CMD5_WRTPRT);
 udelay(1);
 devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);
}
