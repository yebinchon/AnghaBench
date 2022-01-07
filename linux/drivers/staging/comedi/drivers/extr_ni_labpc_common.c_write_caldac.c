
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int cmd5; int (* write_byte ) (struct comedi_device*,int,int ) ;} ;
struct comedi_device {struct labpc_private* private; } ;


 int CMD5_CALDACLD ;
 int CMD5_EEPROMCS ;
 int CMD5_REG ;
 int CMD5_WRTPRT ;
 int labpc_serial_out (struct comedi_device*,unsigned int,int) ;
 int stub1 (struct comedi_device*,int,int ) ;
 int stub2 (struct comedi_device*,int,int ) ;
 int stub3 (struct comedi_device*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void write_caldac(struct comedi_device *dev, unsigned int channel,
    unsigned int value)
{
 struct labpc_private *devpriv = dev->private;


 devpriv->cmd5 &= ~(CMD5_CALDACLD | CMD5_EEPROMCS | CMD5_WRTPRT);
 udelay(1);
 devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);


 labpc_serial_out(dev, channel, 4);

 labpc_serial_out(dev, value, 8);


 devpriv->cmd5 |= CMD5_CALDACLD;
 udelay(1);
 devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);
 devpriv->cmd5 &= ~CMD5_CALDACLD;
 udelay(1);
 devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);
}
