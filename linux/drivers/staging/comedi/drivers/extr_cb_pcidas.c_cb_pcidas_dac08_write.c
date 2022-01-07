
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {scalar_t__ pcibar1; int calib_src; } ;


 unsigned int PCIDAS_CALIB_DAC08_SEL ;
 unsigned int PCIDAS_CALIB_EN ;
 scalar_t__ PCIDAS_CALIB_REG ;
 unsigned int PCIDAS_CALIB_SRC (int ) ;
 int outw (unsigned int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void cb_pcidas_dac08_write(struct comedi_device *dev, unsigned int val)
{
 struct cb_pcidas_private *devpriv = dev->private;

 val |= PCIDAS_CALIB_EN | PCIDAS_CALIB_SRC(devpriv->calib_src);


 outw(val, devpriv->pcibar1 + PCIDAS_CALIB_REG);
 udelay(1);
 outw(val | PCIDAS_CALIB_DAC08_SEL,
      devpriv->pcibar1 + PCIDAS_CALIB_REG);
 udelay(1);
 outw(val, devpriv->pcibar1 + PCIDAS_CALIB_REG);
 udelay(1);
}
