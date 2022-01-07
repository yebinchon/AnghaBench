
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

__attribute__((used)) static void cw_update_attr(u8 *dst, u8 *src, int attribute,
      struct vc_data *vc)
{
 int i, j, offset = (vc->vc_font.height < 10) ? 1 : 2;
 int width = (vc->vc_font.height + 7) >> 3;
 u8 c, msk = ~(0xff >> offset);

 for (i = 0; i < vc->vc_font.width; i++) {
  for (j = 0; j < width; j++) {
   c = *src;
   if (attribute & FBCON_ATTRIBUTE_UNDERLINE && !j)
    c |= msk;
   if (attribute & FBCON_ATTRIBUTE_BOLD && i)
    c |= *(src-width);
   if (attribute & FBCON_ATTRIBUTE_REVERSE)
    c = ~c;
   src++;
   *dst++ = c;
  }
 }
}
