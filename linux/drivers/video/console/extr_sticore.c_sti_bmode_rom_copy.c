
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int gsc_readl (unsigned long) ;
 int sti_flush (unsigned long,unsigned long) ;

__attribute__((used)) static void sti_bmode_rom_copy(unsigned long base, unsigned long count,
          void *dest)
{
 unsigned long dest_start = (unsigned long) dest;

 while (count) {
  count--;
  *(u8 *)dest = gsc_readl(base);
  base += 4;
  dest++;
 }

 sti_flush(dest_start, (unsigned long)dest);
}
