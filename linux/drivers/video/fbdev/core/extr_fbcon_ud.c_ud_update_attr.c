
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int height; int width; } ;
struct vc_data {TYPE_1__ vc_font; } ;


 int FBCON_ATTRIBUTE_BOLD ;
 int FBCON_ATTRIBUTE_REVERSE ;
 int FBCON_ATTRIBUTE_UNDERLINE ;

__attribute__((used)) static void ud_update_attr(u8 *dst, u8 *src, int attribute,
      struct vc_data *vc)
{
 int i, offset = (vc->vc_font.height < 10) ? 1 : 2;
 int width = (vc->vc_font.width + 7) >> 3;
 unsigned int cellsize = vc->vc_font.height * width;
 u8 c;

 offset = offset * width;

 for (i = 0; i < cellsize; i++) {
  c = src[i];
  if (attribute & FBCON_ATTRIBUTE_UNDERLINE && i < offset)
   c = 0xff;
  if (attribute & FBCON_ATTRIBUTE_BOLD)
   c |= c << 1;
  if (attribute & FBCON_ATTRIBUTE_REVERSE)
   c = ~c;
  dst[i] = c;
 }
}
