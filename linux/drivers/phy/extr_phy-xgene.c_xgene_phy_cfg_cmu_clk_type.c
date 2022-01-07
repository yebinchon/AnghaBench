
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_phy_ctx {int dev; } ;
typedef enum cmu_type_t { ____Placeholder_cmu_type_t } cmu_type_t ;
typedef enum clk_type_t { ____Placeholder_clk_type_t } clk_type_t ;


 int CLK_EXT_DIFF ;
 int CLK_INT_DIFF ;
 int CLK_INT_SING ;
 int CMU_REG0 ;
 int CMU_REG0_PLL_REF_SEL_SET (int,int) ;
 int CMU_REG1 ;
 int CMU_REG12 ;
 int CMU_REG12_STATE_DELAY9_SET (int,int) ;
 int CMU_REG13 ;
 int CMU_REG14 ;
 int CMU_REG1_REFCLK_CMOS_SEL_SET (int,int) ;
 int cmu_rd (struct xgene_phy_ctx*,int,int ,int*) ;
 int cmu_wr (struct xgene_phy_ctx*,int,int ,int) ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static void xgene_phy_cfg_cmu_clk_type(struct xgene_phy_ctx *ctx,
           enum cmu_type_t cmu_type,
           enum clk_type_t clk_type)
{
 u32 val;


 cmu_rd(ctx, cmu_type, CMU_REG12, &val);
 val = CMU_REG12_STATE_DELAY9_SET(val, 0x1);
 cmu_wr(ctx, cmu_type, CMU_REG12, val);

 cmu_wr(ctx, cmu_type, CMU_REG13, 0x0222);
 cmu_wr(ctx, cmu_type, CMU_REG14, 0x2225);


 if (clk_type == CLK_EXT_DIFF) {

  cmu_rd(ctx, cmu_type, CMU_REG0, &val);
  val = CMU_REG0_PLL_REF_SEL_SET(val, 0x0);
  cmu_wr(ctx, cmu_type, CMU_REG0, val);

  cmu_rd(ctx, cmu_type, CMU_REG1, &val);
  val = CMU_REG1_REFCLK_CMOS_SEL_SET(val, 0x0);
  cmu_wr(ctx, cmu_type, CMU_REG1, val);
  dev_dbg(ctx->dev, "Set external reference clock\n");
 } else if (clk_type == CLK_INT_DIFF) {

  cmu_rd(ctx, cmu_type, CMU_REG0, &val);
  val = CMU_REG0_PLL_REF_SEL_SET(val, 0x1);
  cmu_wr(ctx, cmu_type, CMU_REG0, val);

  cmu_rd(ctx, cmu_type, CMU_REG1, &val);
  val = CMU_REG1_REFCLK_CMOS_SEL_SET(val, 0x1);
  cmu_wr(ctx, cmu_type, CMU_REG1, val);
  dev_dbg(ctx->dev, "Set internal reference clock\n");
 } else if (clk_type == CLK_INT_SING) {






  cmu_rd(ctx, cmu_type, CMU_REG1, &val);
  val = CMU_REG1_REFCLK_CMOS_SEL_SET(val, 0x1);
  cmu_wr(ctx, cmu_type, CMU_REG1, val);

  cmu_rd(ctx, cmu_type, CMU_REG1, &val);
  val = CMU_REG1_REFCLK_CMOS_SEL_SET(val, 0x0);
  cmu_wr(ctx, cmu_type, CMU_REG1, val);
  dev_dbg(ctx->dev,
   "Set internal single ended reference clock\n");
 }
}
