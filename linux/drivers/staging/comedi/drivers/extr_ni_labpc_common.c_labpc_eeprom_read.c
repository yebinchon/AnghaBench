
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int cmd5; int (* write_byte ) (struct comedi_device*,int,int ) ;} ;
struct comedi_device {struct labpc_private* private; } ;


 int CMD5_EEPROMCS ;
 int CMD5_REG ;
 int CMD5_WRTPRT ;
 unsigned int labpc_serial_in (struct comedi_device*) ;
 int labpc_serial_out (struct comedi_device*,int const,int const) ;
 int stub1 (struct comedi_device*,int,int ) ;
 int stub2 (struct comedi_device*,int,int ) ;
 int stub3 (struct comedi_device*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static unsigned int labpc_eeprom_read(struct comedi_device *dev,
          unsigned int address)
{
 struct labpc_private *devpriv = dev->private;
 unsigned int value;

 const int read_instruction = 0x3;

 const int write_length = 8;


 devpriv->cmd5 &= ~CMD5_EEPROMCS;
 udelay(1);
 devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);
 devpriv->cmd5 |= (CMD5_EEPROMCS | CMD5_WRTPRT);
 udelay(1);
 devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);


 labpc_serial_out(dev, read_instruction, write_length);

 labpc_serial_out(dev, address, write_length);

 value = labpc_serial_in(dev);


 devpriv->cmd5 &= ~(CMD5_EEPROMCS | CMD5_WRTPRT);
 udelay(1);
 devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);

 return value;
}
