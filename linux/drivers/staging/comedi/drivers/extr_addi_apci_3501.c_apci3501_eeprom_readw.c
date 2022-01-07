
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long AMCC_OP_REG_MCSR_NVCMD ;
 unsigned long AMCC_OP_REG_MCSR_NVDATA ;
 unsigned short NVCMD_BEGIN_READ ;
 unsigned short NVCMD_LOAD_HIGH ;
 unsigned short NVCMD_LOAD_LOW ;
 scalar_t__ NVRAM_USER_DATA_START ;
 int apci3501_eeprom_wait (unsigned long) ;
 unsigned char inb (unsigned long) ;
 int outb (unsigned short,unsigned long) ;

__attribute__((used)) static unsigned short apci3501_eeprom_readw(unsigned long iobase,
         unsigned short addr)
{
 unsigned short val = 0;
 unsigned char tmp;
 unsigned char i;


 addr += NVRAM_USER_DATA_START;

 for (i = 0; i < 2; i++) {

  outb(NVCMD_LOAD_LOW, iobase + AMCC_OP_REG_MCSR_NVCMD);
  apci3501_eeprom_wait(iobase);
  outb((addr + i) & 0xff, iobase + AMCC_OP_REG_MCSR_NVDATA);
  apci3501_eeprom_wait(iobase);


  outb(NVCMD_LOAD_HIGH, iobase + AMCC_OP_REG_MCSR_NVCMD);
  apci3501_eeprom_wait(iobase);
  outb(((addr + i) >> 8) & 0xff,
       iobase + AMCC_OP_REG_MCSR_NVDATA);
  apci3501_eeprom_wait(iobase);


  outb(NVCMD_BEGIN_READ, iobase + AMCC_OP_REG_MCSR_NVCMD);
  apci3501_eeprom_wait(iobase);
  tmp = inb(iobase + AMCC_OP_REG_MCSR_NVDATA);
  apci3501_eeprom_wait(iobase);

  if (i == 0)
   val |= tmp;
  else
   val |= (tmp << 8);
 }

 return val;
}
