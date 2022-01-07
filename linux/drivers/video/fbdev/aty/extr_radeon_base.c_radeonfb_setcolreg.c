
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeonfb_info {scalar_t__ is_mobility; int asleep; scalar_t__ has_CRTC2; } ;
struct fb_info {struct radeonfb_info* par; } ;


 int DAC2_PALETTE_ACCESS_CNTL ;
 int DAC_CNTL2 ;
 int INPLL (int ) ;
 int INREG (int ) ;
 int OUTPLL (int ,int) ;
 int OUTREG (int ,int) ;
 int PIXCLK_DAC_ALWAYS_ONb ;
 int VCLK_ECP_CNTL ;
 int radeon_setcolreg (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,struct radeonfb_info*) ;

__attribute__((used)) static int radeonfb_setcolreg (unsigned regno, unsigned red, unsigned green,
          unsigned blue, unsigned transp,
          struct fb_info *info)
{
        struct radeonfb_info *rinfo = info->par;
 u32 dac_cntl2, vclk_cntl = 0;
 int rc;

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

 rc = radeon_setcolreg (regno, red, green, blue, transp, rinfo);

 if (!rinfo->asleep && rinfo->is_mobility)
  OUTPLL(VCLK_ECP_CNTL, vclk_cntl);

 return rc;
}
