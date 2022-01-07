
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u8 ;
struct smtcfb_info {int chip_id; } ;


 int inb_p (int) ;
 int outb_p (int,int) ;

__attribute__((used)) static u_long sm7xx_vram_probe(struct smtcfb_info *sfb)
{
 u8 vram;

 switch (sfb->chip_id) {
 case 0x710:
 case 0x712:
  return 0x00400000;
 case 0x720:
  outb_p(0x76, 0x3c4);
  vram = inb_p(0x3c5) >> 6;

  if (vram == 0x00)
   return 0x00800000;
  else if (vram == 0x01)
   return 0x01000000;
  else if (vram == 0x02)
   return 0x00400000;
  else if (vram == 0x03)
   return 0x00400000;
 }
 return 0;
}
