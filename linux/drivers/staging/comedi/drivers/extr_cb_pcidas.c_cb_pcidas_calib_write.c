
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {scalar_t__ pcibar1; int calib_src; } ;


 unsigned int PCIDAS_CALIB_8800_SEL ;
 unsigned int PCIDAS_CALIB_DATA ;
 unsigned int PCIDAS_CALIB_EN ;
 scalar_t__ PCIDAS_CALIB_REG ;
 unsigned int PCIDAS_CALIB_SRC (int ) ;
 unsigned int PCIDAS_CALIB_TRIM_SEL ;
 int outw (unsigned int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void cb_pcidas_calib_write(struct comedi_device *dev,
      unsigned int val, unsigned int len,
      bool trimpot)
{
 struct cb_pcidas_private *devpriv = dev->private;
 unsigned int calib_bits;
 unsigned int bit;

 calib_bits = PCIDAS_CALIB_EN | PCIDAS_CALIB_SRC(devpriv->calib_src);
 if (trimpot) {

  calib_bits |= PCIDAS_CALIB_TRIM_SEL;
  outw(calib_bits, devpriv->pcibar1 + PCIDAS_CALIB_REG);
 }


 for (bit = 1 << (len - 1); bit; bit >>= 1) {
  if (val & bit)
   calib_bits |= PCIDAS_CALIB_DATA;
  else
   calib_bits &= ~PCIDAS_CALIB_DATA;
  udelay(1);
  outw(calib_bits, devpriv->pcibar1 + PCIDAS_CALIB_REG);
 }
 udelay(1);

 calib_bits = PCIDAS_CALIB_EN | PCIDAS_CALIB_SRC(devpriv->calib_src);

 if (!trimpot) {

  outw(calib_bits | PCIDAS_CALIB_8800_SEL,
       devpriv->pcibar1 + PCIDAS_CALIB_REG);
  udelay(1);
 }


 outw(calib_bits, devpriv->pcibar1 + PCIDAS_CALIB_REG);
}
