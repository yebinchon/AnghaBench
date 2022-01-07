
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct fbtft_par {TYPE_2__* info; } ;
struct TYPE_3__ {int xres; } ;
struct TYPE_4__ {TYPE_1__ var; } ;



__attribute__((used)) static void
construct_line_bitmap(struct fbtft_par *par, u8 *dest, signed short *src,
        int xs, int xe, int y)
{
 int x, i;

 for (x = xs; x < xe; ++x) {
  u8 res = 0;

  for (i = 0; i < 8; i++)
   if (src[(y * 8 + i) * par->info->var.xres + x])
    res |= 1 << i;



  *dest++ = ~res;

 }
}
