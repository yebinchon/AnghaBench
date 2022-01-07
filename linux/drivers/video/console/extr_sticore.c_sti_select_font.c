
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_cooked_rom {struct sti_cooked_font* font_start; } ;
struct sti_cooked_font {struct sti_cooked_font* next_font; } ;


 int* font_height ;
 int* font_index ;
 int * font_name ;
 int* font_width ;
 int num_sti_roms ;
 struct sti_cooked_font* sti_select_fbfont (struct sti_cooked_rom*,int ) ;

__attribute__((used)) static struct sti_cooked_font *sti_select_font(struct sti_cooked_rom *rom,
  int (*search_font_fnc)(struct sti_cooked_rom *, int, int))
{
 struct sti_cooked_font *font;
 int i;
 int index = num_sti_roms;


 if ((font = sti_select_fbfont(rom, font_name[index])))
  return font;

 if (font_width[index] && font_height[index])
  font_index[index] = search_font_fnc(rom,
    font_height[index], font_width[index]);

 for (font = rom->font_start, i = font_index[index];
     font && (i > 0);
     font = font->next_font, i--);

 if (font)
  return font;
 else
  return rom->font_start;
}
