
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int outb (int,int) ;

__attribute__((used)) static void magic_configure(int idx, u8 irq, u8 magic[])
{
 u8 cfg = 0;

 outb(magic[0], 0x779);
 outb(magic[1], 0x379);
 outb(magic[2], 0x379);
 outb(magic[3], 0x379);
 outb(magic[4], 0x379);

 if (irq == 9)
  irq = 2;

 if (idx >= 0 && idx <= 7)
  cfg = 0x80 | idx | (irq << 4);
 outb(cfg, 0x379);
}
