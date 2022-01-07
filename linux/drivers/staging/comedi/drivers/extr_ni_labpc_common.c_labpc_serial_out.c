
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int cmd5; int (* write_byte ) (struct comedi_device*,int ,int ) ;} ;
struct comedi_device {struct labpc_private* private; } ;


 int CMD5_REG ;
 int CMD5_SCLK ;
 int CMD5_SDATA ;
 int stub1 (struct comedi_device*,int ,int ) ;
 int stub2 (struct comedi_device*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void labpc_serial_out(struct comedi_device *dev, unsigned int value,
        unsigned int value_width)
{
 struct labpc_private *devpriv = dev->private;
 int i;

 for (i = 1; i <= value_width; i++) {

  devpriv->cmd5 &= ~CMD5_SCLK;

  if (value & (1 << (value_width - i)))
   devpriv->cmd5 |= CMD5_SDATA;
  else
   devpriv->cmd5 &= ~CMD5_SDATA;
  udelay(1);
  devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);

  devpriv->cmd5 |= CMD5_SCLK;
  udelay(1);
  devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);
 }
}
