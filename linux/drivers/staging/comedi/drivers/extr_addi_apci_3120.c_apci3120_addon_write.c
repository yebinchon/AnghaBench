
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct apci3120_private* private; } ;
struct apci3120_private {scalar_t__ addon; } ;


 scalar_t__ APCI3120_ADDON_ADDR_REG ;
 scalar_t__ APCI3120_ADDON_DATA_REG ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static void apci3120_addon_write(struct comedi_device *dev,
     unsigned int val, unsigned int reg)
{
 struct apci3120_private *devpriv = dev->private;



 outw(reg, devpriv->addon + APCI3120_ADDON_ADDR_REG);
 outw(val & 0xffff, devpriv->addon + APCI3120_ADDON_DATA_REG);

 outw(reg + 2, devpriv->addon + APCI3120_ADDON_ADDR_REG);
 outw((val >> 16) & 0xffff, devpriv->addon + APCI3120_ADDON_DATA_REG);
}
