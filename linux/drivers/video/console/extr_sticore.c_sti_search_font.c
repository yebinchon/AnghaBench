
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_cooked_rom {struct sti_cooked_font* font_start; } ;
struct sti_cooked_font {TYPE_1__* raw; struct sti_cooked_font* next_font; } ;
struct TYPE_2__ {int width; int height; } ;



__attribute__((used)) static int sti_search_font(struct sti_cooked_rom *rom, int height, int width)
{
 struct sti_cooked_font *font;
 int i = 0;

 for (font = rom->font_start; font; font = font->next_font, i++) {
  if ((font->raw->width == width) &&
      (font->raw->height == height))
   return i;
 }
 return 0;
}
