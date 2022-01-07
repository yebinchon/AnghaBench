
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int stat2; int (* read_byte ) (struct comedi_device*,int ) ;int cmd5; int (* write_byte ) (struct comedi_device*,int ,int ) ;} ;
struct comedi_device {struct labpc_private* private; } ;


 int CMD5_REG ;
 int CMD5_SCLK ;
 int STAT2_PROMOUT ;
 int STAT2_REG ;
 int stub1 (struct comedi_device*,int ,int ) ;
 int stub2 (struct comedi_device*,int ,int ) ;
 int stub3 (struct comedi_device*,int ) ;
 int udelay (int) ;

__attribute__((used)) static unsigned int labpc_serial_in(struct comedi_device *dev)
{
 struct labpc_private *devpriv = dev->private;
 unsigned int value = 0;
 int i;
 const int value_width = 8;

 for (i = 1; i <= value_width; i++) {

  devpriv->cmd5 |= CMD5_SCLK;
  udelay(1);
  devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);

  devpriv->cmd5 &= ~CMD5_SCLK;
  udelay(1);
  devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);

  udelay(1);
  devpriv->stat2 = devpriv->read_byte(dev, STAT2_REG);
  if (devpriv->stat2 & STAT2_PROMOUT)
   value |= 1 << (value_width - i);
 }

 return value;
}
