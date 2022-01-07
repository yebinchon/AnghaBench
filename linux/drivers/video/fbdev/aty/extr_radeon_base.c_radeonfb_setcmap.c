
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u32 ;
typedef int u16 ;
struct radeonfb_info {scalar_t__ is_mobility; int asleep; scalar_t__ has_CRTC2; } ;
struct fb_info {struct radeonfb_info* par; } ;
struct fb_cmap {int start; int len; int * transp; int * blue; int * green; int * red; } ;


 int DAC2_PALETTE_ACCESS_CNTL ;
 int DAC_CNTL2 ;
 int INPLL (int ) ;
 int INREG (int ) ;
 int OUTPLL (int ,int) ;
 int OUTREG (int ,int) ;
 int PIXCLK_DAC_ALWAYS_ONb ;
 int VCLK_ECP_CNTL ;
 int radeon_setcolreg (int ,int,int,int,int,struct radeonfb_info*) ;

__attribute__((used)) static int radeonfb_setcmap(struct fb_cmap *cmap, struct fb_info *info)
{
        struct radeonfb_info *rinfo = info->par;
 u16 *red, *green, *blue, *transp;
 u32 dac_cntl2, vclk_cntl = 0;
 int i, start, rc = 0;

        if (!rinfo->asleep) {
  if (rinfo->is_mobility) {
   vclk_cntl = INPLL(VCLK_ECP_CNTL);
   OUTPLL(VCLK_ECP_CNTL,
          vclk_cntl & ~PIXCLK_DAC_ALWAYS_ONb);
  }


  if (rinfo->has_CRTC2) {
   dac_cntl2 = INREG(DAC_CNTL2);
   dac_cntl2 &= ~DAC2_PALETTE_ACCESS_CNTL;
   OUTREG(DAC_CNTL2, dac_cntl2);
  }
 }

 red = cmap->red;
 green = cmap->green;
 blue = cmap->blue;
 transp = cmap->transp;
 start = cmap->start;

 for (i = 0; i < cmap->len; i++) {
  u_int hred, hgreen, hblue, htransp = 0xffff;

  hred = *red++;
  hgreen = *green++;
  hblue = *blue++;
  if (transp)
   htransp = *transp++;
  rc = radeon_setcolreg (start++, hred, hgreen, hblue, htransp,
           rinfo);
  if (rc)
   break;
 }

 if (!rinfo->asleep && rinfo->is_mobility)
  OUTPLL(VCLK_ECP_CNTL, vclk_cntl);

 return rc;
}
