
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int inverse_translate (int ,int ,int ) ;
 int screen_glyph (int ,int) ;
 int screen_glyph_unicode (int ,int) ;
 int sel_cons ;
 scalar_t__ use_unicode ;

__attribute__((used)) static u32
sel_pos(int n)
{
 if (use_unicode)
  return screen_glyph_unicode(sel_cons, n / 2);
 return inverse_translate(sel_cons, screen_glyph(sel_cons, n),
    0);
}
