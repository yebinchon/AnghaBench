
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct NvRamType {int dummy; } ;


 int EN_EEPROM ;
 scalar_t__ TRM_S1040_GEN_CONTROL ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int trms1040_get_data (unsigned long,int) ;

__attribute__((used)) static void trms1040_read_all(struct NvRamType *eeprom, unsigned long io_port)
{
 u8 *b_eeprom = (u8 *)eeprom;
 u8 addr;


 outb((inb(io_port + TRM_S1040_GEN_CONTROL) | EN_EEPROM),
      io_port + TRM_S1040_GEN_CONTROL);


 for (addr = 0; addr < 128; addr++, b_eeprom++)
  *b_eeprom = trms1040_get_data(io_port, addr);


 outb((inb(io_port + TRM_S1040_GEN_CONTROL) & ~EN_EEPROM),
      io_port + TRM_S1040_GEN_CONTROL);
}
