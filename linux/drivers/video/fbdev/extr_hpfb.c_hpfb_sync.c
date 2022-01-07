
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 scalar_t__ BUSY ;
 int RR_COPY ;
 scalar_t__ TC_FBEN ;
 scalar_t__ TC_PRR ;
 scalar_t__ TC_WEN ;
 int fb_bitmask ;
 scalar_t__ fb_regs ;
 int in_8 (scalar_t__) ;
 int out_8 (scalar_t__,int) ;

__attribute__((used)) static int hpfb_sync(struct fb_info *info)
{




 while (in_8(fb_regs + BUSY) & fb_bitmask)
  ;

 out_8(fb_regs + TC_WEN, fb_bitmask);
 out_8(fb_regs + TC_PRR, RR_COPY);
 out_8(fb_regs + TC_FBEN, fb_bitmask);

 return 0;
}
