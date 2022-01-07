
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_rom_font {int next_font; } ;
struct sti_rom {int font_start; } ;
struct sti_cooked_rom {struct sti_cooked_font* font_start; } ;
struct sti_cooked_font {struct sti_cooked_font* next_font; struct sti_rom_font* raw; } ;


 int GFP_KERNEL ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static int sti_cook_fonts(struct sti_cooked_rom *cooked_rom,
     struct sti_rom *raw_rom)
{
 struct sti_rom_font *raw_font, *font_start;
 struct sti_cooked_font *cooked_font;

 cooked_font = kzalloc(sizeof(*cooked_font), GFP_KERNEL);
 if (!cooked_font)
  return 0;

 cooked_rom->font_start = cooked_font;

 raw_font = ((void *)raw_rom) + (raw_rom->font_start);

 font_start = raw_font;
 cooked_font->raw = raw_font;

 while (raw_font->next_font) {
  raw_font = ((void *)font_start) + (raw_font->next_font);

  cooked_font->next_font = kzalloc(sizeof(*cooked_font), GFP_KERNEL);
  if (!cooked_font->next_font)
   return 1;

  cooked_font = cooked_font->next_font;

  cooked_font->raw = raw_font;
 }

 cooked_font->next_font = ((void*)0);
 return 1;
}
