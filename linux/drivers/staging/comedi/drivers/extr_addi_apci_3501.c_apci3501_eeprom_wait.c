
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AMCC_OP_REG_MCSR_NVCMD ;
 unsigned char inb (scalar_t__) ;

__attribute__((used)) static void apci3501_eeprom_wait(unsigned long iobase)
{
 unsigned char val;

 do {
  val = inb(iobase + AMCC_OP_REG_MCSR_NVCMD);
 } while (val & 0x80);
}
