
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeonfb_info {scalar_t__ family; scalar_t__ is_mobility; } ;
struct radeon_regs {int ppll_ref_div; int ppll_div_3; int clk_cntl_index; } ;


 scalar_t__ CHIP_FAMILY_RS300 ;
 scalar_t__ CHIP_FAMILY_RS400 ;
 scalar_t__ CHIP_FAMILY_RS480 ;
 int CLOCK_CNTL_INDEX ;
 int HTOTAL_CNTL ;
 int INPLL (int ) ;
 scalar_t__ IS_R300_VARIANT (struct radeonfb_info*) ;
 int OUTPLL (int ,int ) ;
 int OUTPLLP (int ,int,int) ;
 int OUTREGP (int ,int,int) ;
 int PPLL_ATOMIC_UPDATE_EN ;
 int PPLL_ATOMIC_UPDATE_R ;
 int PPLL_ATOMIC_UPDATE_W ;
 int PPLL_CNTL ;
 int PPLL_DIV_3 ;
 int PPLL_DIV_SEL_MASK ;
 int PPLL_FB3_DIV_MASK ;
 int PPLL_POST3_DIV_MASK ;
 int PPLL_REF_DIV ;
 int PPLL_REF_DIV_MASK ;
 int PPLL_RESET ;
 int PPLL_SLEEP ;
 int PPLL_VGA_ATOMIC_UPDATE_EN ;
 int R300_PPLL_REF_DIV_ACC_MASK ;
 int R300_PPLL_REF_DIV_ACC_SHIFT ;
 int VCLK_ECP_CNTL ;
 int VCLK_SRC_SEL_CPUCLK ;
 int VCLK_SRC_SEL_MASK ;
 int VCLK_SRC_SEL_PPLLCLK ;
 int radeon_fifo_wait (int) ;
 int radeon_msleep (int) ;
 int radeon_pll_errata_after_data (struct radeonfb_info*) ;
 int radeon_pll_errata_after_index (struct radeonfb_info*) ;

__attribute__((used)) static void radeon_write_pll_regs(struct radeonfb_info *rinfo, struct radeon_regs *mode)
{
 int i;

 radeon_fifo_wait(20);


 if (rinfo->is_mobility) {







  if ((mode->ppll_ref_div == (INPLL(PPLL_REF_DIV) & PPLL_REF_DIV_MASK)) &&
      (mode->ppll_div_3 == (INPLL(PPLL_DIV_3) &
       (PPLL_POST3_DIV_MASK | PPLL_FB3_DIV_MASK)))) {



   OUTREGP(CLOCK_CNTL_INDEX,
    mode->clk_cntl_index & PPLL_DIV_SEL_MASK,
    ~PPLL_DIV_SEL_MASK);
   radeon_pll_errata_after_index(rinfo);
   radeon_pll_errata_after_data(rinfo);
              return;
  }
 }


 OUTPLLP(VCLK_ECP_CNTL, VCLK_SRC_SEL_CPUCLK, ~VCLK_SRC_SEL_MASK);


 OUTPLLP(PPLL_CNTL,
  PPLL_RESET | PPLL_ATOMIC_UPDATE_EN | PPLL_VGA_ATOMIC_UPDATE_EN,
  ~(PPLL_RESET | PPLL_ATOMIC_UPDATE_EN | PPLL_VGA_ATOMIC_UPDATE_EN));


 OUTREGP(CLOCK_CNTL_INDEX,
  mode->clk_cntl_index & PPLL_DIV_SEL_MASK,
  ~PPLL_DIV_SEL_MASK);
 radeon_pll_errata_after_index(rinfo);
 radeon_pll_errata_after_data(rinfo);


 if (IS_R300_VARIANT(rinfo) ||
     rinfo->family == CHIP_FAMILY_RS300 ||
     rinfo->family == CHIP_FAMILY_RS400 ||
     rinfo->family == CHIP_FAMILY_RS480) {
  if (mode->ppll_ref_div & R300_PPLL_REF_DIV_ACC_MASK) {



   OUTPLLP(PPLL_REF_DIV, mode->ppll_ref_div, 0);
  } else {

   OUTPLLP(PPLL_REF_DIV,
    (mode->ppll_ref_div << R300_PPLL_REF_DIV_ACC_SHIFT),
    ~R300_PPLL_REF_DIV_ACC_MASK);
  }
 } else
  OUTPLLP(PPLL_REF_DIV, mode->ppll_ref_div, ~PPLL_REF_DIV_MASK);


 OUTPLLP(PPLL_DIV_3, mode->ppll_div_3, ~PPLL_FB3_DIV_MASK);
 OUTPLLP(PPLL_DIV_3, mode->ppll_div_3, ~PPLL_POST3_DIV_MASK);


 while (INPLL(PPLL_REF_DIV) & PPLL_ATOMIC_UPDATE_R)
  ;
 OUTPLLP(PPLL_REF_DIV, PPLL_ATOMIC_UPDATE_W, ~PPLL_ATOMIC_UPDATE_W);






 for (i = 0; (i < 10000 && INPLL(PPLL_REF_DIV) & PPLL_ATOMIC_UPDATE_R); i++)
  ;

 OUTPLL(HTOTAL_CNTL, 0);


 OUTPLLP(PPLL_CNTL, 0,
  ~(PPLL_RESET | PPLL_SLEEP | PPLL_ATOMIC_UPDATE_EN | PPLL_VGA_ATOMIC_UPDATE_EN));


        radeon_msleep(5);


 OUTPLLP(VCLK_ECP_CNTL, VCLK_SRC_SEL_PPLLCLK, ~VCLK_SRC_SEL_MASK);
}
