
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 unsigned long FB_SHIFT_HIGH (struct fb_info*,unsigned long,int) ;
 unsigned long comp (unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static void
bitfill_unaligned(struct fb_info *p, unsigned long *dst, int dst_idx,
    unsigned long pat, int left, int right, unsigned n, int bits)
{
 unsigned long first, last;

 if (!n)
  return;

 first = FB_SHIFT_HIGH(p, ~0UL, dst_idx);
 last = ~(FB_SHIFT_HIGH(p, ~0UL, (dst_idx+n) % bits));

 if (dst_idx+n <= bits) {

  if (last)
   first &= last;
  *dst = comp(pat, *dst, first);
 } else {


  if (first) {
   *dst = comp(pat, *dst, first);
   dst++;
   pat = pat << left | pat >> right;
   n -= bits - dst_idx;
  }


  n /= bits;
  while (n >= 4) {
   *dst++ = pat;
   pat = pat << left | pat >> right;
   *dst++ = pat;
   pat = pat << left | pat >> right;
   *dst++ = pat;
   pat = pat << left | pat >> right;
   *dst++ = pat;
   pat = pat << left | pat >> right;
   n -= 4;
  }
  while (n--) {
   *dst++ = pat;
   pat = pat << left | pat >> right;
  }


  if (last)
   *dst = comp(pat, *dst, last);
 }
}
