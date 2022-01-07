
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {unsigned int vc_size_row; unsigned long vc_origin; unsigned long vc_scr_end; int vc_hi_font_mask; } ;
struct uni_screen {int ** lines; } ;
typedef int char32_t ;


 int BUG_ON (int) ;
 struct uni_screen* get_vc_uniscr (struct vc_data*) ;
 int inverse_translate (struct vc_data*,int,int) ;
 int memcpy (void*,int *,unsigned int) ;
 int scr_readw (int ) ;
 scalar_t__ screenpos (struct vc_data*,int,int) ;

void vc_uniscr_copy_line(struct vc_data *vc, void *dest, int viewed,
    unsigned int row, unsigned int col, unsigned int nr)
{
 struct uni_screen *uniscr = get_vc_uniscr(vc);
 int offset = row * vc->vc_size_row + col * 2;
 unsigned long pos;

 BUG_ON(!uniscr);

 pos = (unsigned long)screenpos(vc, offset, viewed);
 if (pos >= vc->vc_origin && pos < vc->vc_scr_end) {





  row = (pos - vc->vc_origin) / vc->vc_size_row;
  col = ((pos - vc->vc_origin) % vc->vc_size_row) / 2;
  memcpy(dest, &uniscr->lines[row][col], nr * sizeof(char32_t));
 } else {






  u16 *p = (u16 *)pos;
  int mask = vc->vc_hi_font_mask | 0xff;
  char32_t *uni_buf = dest;
  while (nr--) {
   u16 glyph = scr_readw(p++) & mask;
   *uni_buf++ = inverse_translate(vc, glyph, 1);
  }
 }
}
