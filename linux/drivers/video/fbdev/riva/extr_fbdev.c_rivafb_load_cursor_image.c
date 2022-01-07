
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int * CURSOR; } ;
struct riva_par {TYPE_1__ riva; } ;


 int MAX_CURS ;
 int le16_to_cpu (int) ;
 int reverse_order (int*) ;
 int writel (int,int *) ;

__attribute__((used)) static void rivafb_load_cursor_image(struct riva_par *par, u8 *data8,
         u16 bg, u16 fg, u32 w, u32 h)
{
 int i, j, k = 0;
 u32 b, tmp;
 u32 *data = (u32 *)data8;
 bg = le16_to_cpu(bg);
 fg = le16_to_cpu(fg);

 w = (w + 1) & ~1;

 for (i = 0; i < h; i++) {
  b = *data++;
  reverse_order(&b);

  for (j = 0; j < w/2; j++) {
   tmp = 0;






   tmp = (b & 1) ? fg : bg;
   b >>= 1;
   tmp |= (b & 1) ? fg << 16 : bg << 16;
   b >>= 1;

   writel(tmp, &par->riva.CURSOR[k++]);
  }
  k += (MAX_CURS - w)/2;
 }
}
