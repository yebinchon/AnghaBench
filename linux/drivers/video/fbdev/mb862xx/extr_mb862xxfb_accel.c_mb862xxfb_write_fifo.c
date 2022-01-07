
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct mb862xxfb_par {int dummy; } ;
struct fb_info {struct mb862xxfb_par* par; } ;


 int GDC_GEO_REG_INPUT_FIFO ;
 int GDC_REG_FIFO_COUNT ;
 int draw ;
 int geo ;
 scalar_t__ inreg (int ,int ) ;
 int outreg (int ,int ,size_t) ;

__attribute__((used)) static void mb862xxfb_write_fifo(u32 count, u32 *data, struct fb_info *info)
{
 struct mb862xxfb_par *par = info->par;
 static u32 free;

 u32 total = 0;
 while (total < count) {
  if (free) {
   outreg(geo, GDC_GEO_REG_INPUT_FIFO, data[total]);
   total++;
   free--;
  } else {
   free = (u32) inreg(draw, GDC_REG_FIFO_COUNT);
  }
 }
}
