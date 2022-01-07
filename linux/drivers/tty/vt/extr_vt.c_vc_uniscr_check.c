
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {int vc_cols; int vc_rows; int vc_hi_font_mask; struct uni_screen* vc_uni_screen; scalar_t__ vc_origin; int vc_utf; } ;
struct uni_screen {int ** lines; } ;
typedef int char32_t ;


 int ENODATA ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int NO_VC_UNI_SCREEN ;
 int WARN_CONSOLE_UNLOCKED () ;
 scalar_t__ __is_defined (int ) ;
 int inverse_translate (struct vc_data*,int,int) ;
 int scr_readw (int ) ;
 struct uni_screen* vc_uniscr_alloc (int,int) ;

int vc_uniscr_check(struct vc_data *vc)
{
 struct uni_screen *uniscr;
 unsigned short *p;
 int x, y, mask;

 if (__is_defined(NO_VC_UNI_SCREEN))
  return -EOPNOTSUPP;

 WARN_CONSOLE_UNLOCKED();

 if (!vc->vc_utf)
  return -ENODATA;

 if (vc->vc_uni_screen)
  return 0;

 uniscr = vc_uniscr_alloc(vc->vc_cols, vc->vc_rows);
 if (!uniscr)
  return -ENOMEM;







 p = (unsigned short *)vc->vc_origin;
 mask = vc->vc_hi_font_mask | 0xff;
 for (y = 0; y < vc->vc_rows; y++) {
  char32_t *line = uniscr->lines[y];
  for (x = 0; x < vc->vc_cols; x++) {
   u16 glyph = scr_readw(p++) & mask;
   line[x] = inverse_translate(vc, glyph, 1);
  }
 }

 vc->vc_uni_screen = uniscr;
 return 0;
}
