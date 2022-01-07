
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int program_bits; int locationAddr; } ;
union aty_pll {TYPE_1__ ics2595; } ;
typedef int u8 ;
typedef int u32 ;
struct fb_info {scalar_t__ par; } ;
struct atyfb_par {scalar_t__ clk_wr_offset; } ;


 scalar_t__ CLOCK_CNTL ;
 int CLOCK_STROBE ;
 int CRTC_EXT_DISP_EN ;
 scalar_t__ CRTC_GEN_CNTL ;
 scalar_t__ DAC_REGS ;
 int aty_ICS2595_put1bit (int,struct atyfb_par*) ;
 int aty_StrobeClock (struct atyfb_par*) ;
 int aty_ld_8 (scalar_t__,struct atyfb_par*) ;
 int aty_st_8 (scalar_t__,int,struct atyfb_par*) ;
 int mdelay (int) ;

__attribute__((used)) static void aty_set_pll18818(const struct fb_info *info,
        const union aty_pll *pll)
{
 struct atyfb_par *par = (struct atyfb_par *) info->par;
 u32 program_bits;
 u32 locationAddr;

 u32 i;

 u8 old_clock_cntl;
 u8 old_crtc_ext_disp;

 old_clock_cntl = aty_ld_8(CLOCK_CNTL, par);
 aty_st_8(CLOCK_CNTL + par->clk_wr_offset, 0, par);

 old_crtc_ext_disp = aty_ld_8(CRTC_GEN_CNTL + 3, par);
 aty_st_8(CRTC_GEN_CNTL + 3,
   old_crtc_ext_disp | (CRTC_EXT_DISP_EN >> 24), par);

 mdelay(15);

 program_bits = pll->ics2595.program_bits;
 locationAddr = pll->ics2595.locationAddr;


 aty_st_8(CLOCK_CNTL + par->clk_wr_offset, 0, par);
 aty_StrobeClock(par);
 aty_st_8(CLOCK_CNTL + par->clk_wr_offset, 1, par);
 aty_StrobeClock(par);

 aty_ICS2595_put1bit(1, par);
 aty_ICS2595_put1bit(0, par);
 aty_ICS2595_put1bit(0, par);

 for (i = 0; i < 5; i++) {
  aty_ICS2595_put1bit(locationAddr & 1, par);
  locationAddr >>= 1;
 }

 for (i = 0; i < 8 + 1 + 2 + 2; i++) {
  aty_ICS2595_put1bit(program_bits & 1, par);
  program_bits >>= 1;
 }

 mdelay(1);

 (void) aty_ld_8(DAC_REGS, par);
 aty_st_8(CRTC_GEN_CNTL + 3, old_crtc_ext_disp, par);
 aty_st_8(CLOCK_CNTL + par->clk_wr_offset,
   old_clock_cntl | CLOCK_STROBE, par);

 mdelay(50);
 aty_st_8(CLOCK_CNTL + par->clk_wr_offset,
   ((pll->ics2595.locationAddr & 0x0F) | CLOCK_STROBE), par);
 return;
}
