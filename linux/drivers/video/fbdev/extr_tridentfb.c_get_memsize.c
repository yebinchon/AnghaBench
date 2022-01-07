
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int chip_id; int io_virt; } ;



 int Kb ;
 int Mb ;
 int SPR ;
 int memdiff ;
 int memsize ;
 int output (char*,unsigned int) ;
 int read3X4 (struct tridentfb_par*,int ) ;
 unsigned char vga_mm_rseq (int ,int) ;

__attribute__((used)) static unsigned int get_memsize(struct tridentfb_par *par)
{
 unsigned char tmp, tmp2;
 unsigned int k;


 if (memsize)
  k = memsize * Kb;
 else
  switch (par->chip_id) {
  case 128:
   k = 2560 * Kb;
   break;
  default:
   tmp = read3X4(par, SPR) & 0x0F;
   switch (tmp) {

   case 0x01:
    k = 512 * Kb;
    break;
   case 0x02:
    k = 6 * Mb;
    break;
   case 0x03:
    k = 1 * Mb;
    break;
   case 0x04:
    k = 8 * Mb;
    break;
   case 0x06:
    k = 10 * Mb;
    break;
   case 0x07:
    k = 2 * Mb;
    break;
   case 0x08:
    k = 12 * Mb;
    break;
   case 0x0A:
    k = 14 * Mb;
    break;
   case 0x0C:
    k = 16 * Mb;
    break;
   case 0x0E:

    tmp2 = vga_mm_rseq(par->io_virt, 0xC1);
    switch (tmp2) {
    case 0x00:
     k = 20 * Mb;
     break;
    case 0x01:
     k = 24 * Mb;
     break;
    case 0x10:
     k = 28 * Mb;
     break;
    case 0x11:
     k = 32 * Mb;
     break;
    default:
     k = 1 * Mb;
     break;
    }
    break;

   case 0x0F:
    k = 4 * Mb;
    break;
   default:
    k = 1 * Mb;
    break;
   }
  }

 k -= memdiff * Kb;
 output("framebuffer size = %d Kb\n", k / Kb);
 return k;
}
