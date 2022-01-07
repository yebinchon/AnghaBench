
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 unsigned long FB_SHIFT_HIGH (struct fb_info*,unsigned long,unsigned int) ;
 unsigned long comp (unsigned long const,unsigned long,unsigned long) ;

__attribute__((used)) static void
bitcpy(struct fb_info *p, unsigned long *dst, unsigned dst_idx,
 const unsigned long *src, unsigned src_idx, int bits, unsigned n)
{
 unsigned long first, last;
 int const shift = dst_idx-src_idx;
 int left, right;

 first = FB_SHIFT_HIGH(p, ~0UL, dst_idx);
 last = ~(FB_SHIFT_HIGH(p, ~0UL, (dst_idx+n) % bits));

 if (!shift) {

  if (dst_idx+n <= bits) {

   if (last)
    first &= last;
   *dst = comp(*src, *dst, first);
  } else {


    if (first != ~0UL) {
    *dst = comp(*src, *dst, first);
    dst++;
    src++;
    n -= bits - dst_idx;
   }


   n /= bits;
   while (n >= 8) {
    *dst++ = *src++;
    *dst++ = *src++;
    *dst++ = *src++;
    *dst++ = *src++;
    *dst++ = *src++;
    *dst++ = *src++;
    *dst++ = *src++;
    *dst++ = *src++;
    n -= 8;
   }
   while (n--)
    *dst++ = *src++;


   if (last)
    *dst = comp(*src, *dst, last);
  }
 } else {
  unsigned long d0, d1;
  int m;


  right = shift & (bits - 1);
  left = -shift & (bits - 1);

  if (dst_idx+n <= bits) {

   if (last)
    first &= last;
   if (shift > 0) {

    *dst = comp(*src << left, *dst, first);
   } else if (src_idx+n <= bits) {

    *dst = comp(*src >> right, *dst, first);
   } else {

    d0 = *src++;
    d1 = *src;
    *dst = comp(d0 >> right | d1 << left, *dst,
         first);
   }
  } else {







   d0 = *src++;

   if (shift > 0) {

    *dst = comp(d0 << left, *dst, first);
    dst++;
    n -= bits - dst_idx;
   } else {

    d1 = *src++;
    *dst = comp(d0 >> right | d1 << left, *dst,
         first);
    d0 = d1;
    dst++;
    n -= bits - dst_idx;
   }


   m = n % bits;
   n /= bits;
   while (n >= 4) {
    d1 = *src++;
    *dst++ = d0 >> right | d1 << left;
    d0 = d1;
    d1 = *src++;
    *dst++ = d0 >> right | d1 << left;
    d0 = d1;
    d1 = *src++;
    *dst++ = d0 >> right | d1 << left;
    d0 = d1;
    d1 = *src++;
    *dst++ = d0 >> right | d1 << left;
    d0 = d1;
    n -= 4;
   }
   while (n--) {
    d1 = *src++;
    *dst++ = d0 >> right | d1 << left;
    d0 = d1;
   }


   if (m) {
    if (m <= bits - right) {

     d0 >>= right;
    } else {

      d1 = *src;
     d0 = d0 >> right | d1 << left;
    }
    *dst = comp(d0, *dst, last);
   }
  }
 }
}
