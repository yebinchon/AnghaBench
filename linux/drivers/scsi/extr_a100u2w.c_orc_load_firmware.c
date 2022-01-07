
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct orc_host {scalar_t__ base; } ;


 int DOWNLOAD ;
 int EEPRG ;
 scalar_t__ ORC_EBIOSADR0 ;
 scalar_t__ ORC_EBIOSADR2 ;
 scalar_t__ ORC_EBIOSDATA ;
 scalar_t__ ORC_FWBASEADR ;
 scalar_t__ ORC_GCFG ;
 scalar_t__ ORC_RISCCTL ;
 scalar_t__ ORC_RISCRAM ;
 int PRGMRST ;
 scalar_t__ cpu_to_le32 (int ) ;
 int inb (scalar_t__) ;
 scalar_t__ inl (scalar_t__) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int outl (scalar_t__,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static u8 orc_load_firmware(struct orc_host * host)
{
 u32 data32;
 u16 bios_addr;
 u16 i;
 u8 *data32_ptr, data;




 data = inb(host->base + ORC_GCFG);
 outb(data | EEPRG, host->base + ORC_GCFG);
 outb(0x00, host->base + ORC_EBIOSADR2);
 outw(0x0000, host->base + ORC_EBIOSADR0);
 if (inb(host->base + ORC_EBIOSDATA) != 0x55) {
  outb(data, host->base + ORC_GCFG);
  return 0;
 }
 outw(0x0001, host->base + ORC_EBIOSADR0);
 if (inb(host->base + ORC_EBIOSDATA) != 0xAA) {
  outb(data, host->base + ORC_GCFG);
  return 0;
 }

 outb(PRGMRST | DOWNLOAD, host->base + ORC_RISCCTL);
 data32_ptr = (u8 *) & data32;
 data32 = cpu_to_le32(0);
 outw(0x0010, host->base + ORC_EBIOSADR0);
 *data32_ptr = inb(host->base + ORC_EBIOSDATA);
 outw(0x0011, host->base + ORC_EBIOSADR0);
 *(data32_ptr + 1) = inb(host->base + ORC_EBIOSDATA);
 outw(0x0012, host->base + ORC_EBIOSADR0);
 *(data32_ptr + 2) = inb(host->base + ORC_EBIOSDATA);
 outw(*(data32_ptr + 2), host->base + ORC_EBIOSADR2);
 outl(le32_to_cpu(data32), host->base + ORC_FWBASEADR);



 udelay(500);
 bios_addr = (u16) le32_to_cpu(data32);
 for (i = 0, data32_ptr = (u8 *) & data32;
      i < 0x1000;
      i++, bios_addr++) {
  outw(bios_addr, host->base + ORC_EBIOSADR0);
  *data32_ptr++ = inb(host->base + ORC_EBIOSDATA);
  if ((i % 4) == 3) {
   outl(le32_to_cpu(data32), host->base + ORC_RISCRAM);
   data32_ptr = (u8 *) & data32;
  }
 }



 outb(PRGMRST | DOWNLOAD, host->base + ORC_RISCCTL);
 bios_addr -= 0x1000;
 for (i = 0, data32_ptr = (u8 *) & data32;
      i < 0x1000;
      i++, bios_addr++) {
  outw(bios_addr, host->base + ORC_EBIOSADR0);
  *data32_ptr++ = inb(host->base + ORC_EBIOSDATA);
  if ((i % 4) == 3) {
   if (inl(host->base + ORC_RISCRAM) != le32_to_cpu(data32)) {
    outb(PRGMRST, host->base + ORC_RISCCTL);
    outb(data, host->base + ORC_GCFG);
    return 0;
   }
   data32_ptr = (u8 *) & data32;
  }
 }


 outb(PRGMRST, host->base + ORC_RISCCTL);
 outb(data, host->base + ORC_GCFG);
 return 1;
}
