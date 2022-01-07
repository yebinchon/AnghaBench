
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_phy_ctx {int dev; } ;
typedef enum cmu_type_t { ____Placeholder_cmu_type_t } cmu_type_t ;
typedef enum clk_type_t { ____Placeholder_clk_type_t } clk_type_t ;


 int CMU_REG0 ;
 int CMU_REG0_PDOWN_MASK ;
 int CMU_REG16 ;
 int CMU_REG16_VCOCAL_WAIT_BTW_CODE_SET (int ,int) ;
 int CMU_REG32 ;
 int CMU_REG32_FORCE_VCOCAL_START_MASK ;
 int PHY_CMU ;
 int cmu_rd (struct xgene_phy_ctx*,int,int ,int *) ;
 int cmu_toggle1to0 (struct xgene_phy_ctx*,int,int ,int ) ;
 int cmu_wr (struct xgene_phy_ctx*,int,int ,int ) ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static void xgene_phy_pdwn_force_vco(struct xgene_phy_ctx *ctx,
         enum cmu_type_t cmu_type,
         enum clk_type_t clk_type)
{
 u32 val;

 dev_dbg(ctx->dev, "Reset VCO and re-start again\n");
 if (cmu_type == PHY_CMU) {
  cmu_rd(ctx, cmu_type, CMU_REG16, &val);
  val = CMU_REG16_VCOCAL_WAIT_BTW_CODE_SET(val, 0x7);
  cmu_wr(ctx, cmu_type, CMU_REG16, val);
 }

 cmu_toggle1to0(ctx, cmu_type, CMU_REG0, CMU_REG0_PDOWN_MASK);
 cmu_toggle1to0(ctx, cmu_type, CMU_REG32,
         CMU_REG32_FORCE_VCOCAL_START_MASK);
}
