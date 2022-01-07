
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vc_data {int vc_cols; } ;
struct uni_screen {int ** lines; } ;


 struct uni_screen* get_vc_uniscr (struct vc_data*) ;
 int inverse_translate (struct vc_data*,int ,int) ;
 int screen_glyph (struct vc_data*,int) ;

u32 screen_glyph_unicode(struct vc_data *vc, int n)
{
 struct uni_screen *uniscr = get_vc_uniscr(vc);

 if (uniscr)
  return uniscr->lines[n / vc->vc_cols][n % vc->vc_cols];
 return inverse_translate(vc, screen_glyph(vc, n * 2), 1);
}
