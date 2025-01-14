
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {unsigned long vc_visible_origin; unsigned long vc_origin; int vc_size_row; scalar_t__ vc_scr_end; } ;
typedef int ptrdiff_t ;



void vc_scrolldelta_helper(struct vc_data *c, int lines,
  unsigned int rolled_over, void *base, unsigned int size)
{
 unsigned long ubase = (unsigned long)base;
 ptrdiff_t scr_end = (void *)c->vc_scr_end - base;
 ptrdiff_t vorigin = (void *)c->vc_visible_origin - base;
 ptrdiff_t origin = (void *)c->vc_origin - base;
 int margin = c->vc_size_row * 4;
 int from, wrap, from_off, avail;


 if (!lines) {
  c->vc_visible_origin = c->vc_origin;
  return;
 }


 if (rolled_over > scr_end + margin) {
  from = scr_end;
  wrap = rolled_over + c->vc_size_row;
 } else {
  from = 0;
  wrap = size;
 }

 from_off = (vorigin - from + wrap) % wrap + lines * c->vc_size_row;
 avail = (origin - from + wrap) % wrap;


 if (avail < 2 * margin)
  margin = 0;
 if (from_off < margin)
  from_off = 0;
 if (from_off > avail - margin)
  from_off = avail;

 c->vc_visible_origin = ubase + (from + from_off) % wrap;
}
