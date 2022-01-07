
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vc_data {int vc_ulcolor; int vc_halfcolor; } ;
typedef int attr ;



__attribute__((used)) static u8
sisusbcon_build_attr(struct vc_data *c, u8 color, u8 intensity,
       u8 blink, u8 underline, u8 reverse, u8 unused)
{
 u8 attr = color;

 if (underline)
  attr = (attr & 0xf0) | c->vc_ulcolor;
 else if (intensity == 0)
  attr = (attr & 0xf0) | c->vc_halfcolor;

 if (reverse)
  attr = ((attr) & 0x88) |
         ((((attr) >> 4) |
         ((attr) << 4)) & 0x77);

 if (blink)
  attr ^= 0x80;

 if (intensity == 2)
  attr ^= 0x08;

 return attr;
}
