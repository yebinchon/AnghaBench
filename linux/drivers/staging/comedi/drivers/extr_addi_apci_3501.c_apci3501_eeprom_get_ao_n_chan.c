
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct apci3501_private* private; } ;
struct apci3501_private {int amcc; } ;


 unsigned char EEPROM_ANALOGOUTPUT ;
 int apci3501_eeprom_readw (int ,unsigned short) ;

__attribute__((used)) static int apci3501_eeprom_get_ao_n_chan(struct comedi_device *dev)
{
 struct apci3501_private *devpriv = dev->private;
 unsigned char nfuncs;
 int i;

 nfuncs = apci3501_eeprom_readw(devpriv->amcc, 10) & 0xff;


 for (i = 0; i < nfuncs; i++) {
  unsigned short offset = i * 4;
  unsigned short addr;
  unsigned char func;
  unsigned short val;

  func = apci3501_eeprom_readw(devpriv->amcc, 12 + offset) & 0x3f;
  addr = apci3501_eeprom_readw(devpriv->amcc, 14 + offset);

  if (func == EEPROM_ANALOGOUTPUT) {
   val = apci3501_eeprom_readw(devpriv->amcc, addr + 10);
   return (val >> 4) & 0x3ff;
  }
 }
 return 0;
}
