
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int gsc_readb (unsigned long) ;
 int gsc_readl (unsigned long) ;
 int sti_flush (unsigned long,unsigned long) ;

__attribute__((used)) static void sti_rom_copy(unsigned long base, unsigned long count, void *dest)
{
 unsigned long dest_start = (unsigned long) dest;


 while (count >= 4) {
  count -= 4;
  *(u32 *)dest = gsc_readl(base);
  base += 4;
  dest += 4;
 }
 while (count) {
  count--;
  *(u8 *)dest = gsc_readb(base);
  base++;
  dest++;
 }

 sti_flush(dest_start, (unsigned long)dest);
}
