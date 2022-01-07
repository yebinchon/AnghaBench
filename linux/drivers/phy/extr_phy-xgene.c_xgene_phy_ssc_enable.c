
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_phy_ctx {int dummy; } ;
typedef enum cmu_type_t { ____Placeholder_cmu_type_t } cmu_type_t ;


 int CMU_REG32 ;
 int CMU_REG32_FORCE_VCOCAL_START_MASK ;
 int CMU_REG35 ;
 int CMU_REG35_PLL_SSC_MOD_SET (int ,int) ;
 int CMU_REG36 ;
 int CMU_REG36_PLL_SSC_DSMSEL_SET (int ,int) ;
 int CMU_REG36_PLL_SSC_EN_SET (int ,int) ;
 int CMU_REG36_PLL_SSC_VSTEP_SET (int ,int) ;
 int CMU_REG5 ;
 int CMU_REG5_PLL_RESETB_MASK ;
 int cmu_clrbits (struct xgene_phy_ctx*,int,int ,int ) ;
 int cmu_rd (struct xgene_phy_ctx*,int,int ,int *) ;
 int cmu_setbits (struct xgene_phy_ctx*,int,int ,int ) ;
 int cmu_toggle1to0 (struct xgene_phy_ctx*,int,int ,int ) ;
 int cmu_wr (struct xgene_phy_ctx*,int,int ,int ) ;

__attribute__((used)) static void xgene_phy_ssc_enable(struct xgene_phy_ctx *ctx,
     enum cmu_type_t cmu_type)
{
 u32 val;


 cmu_rd(ctx, cmu_type, CMU_REG35, &val);
 val = CMU_REG35_PLL_SSC_MOD_SET(val, 98);
 cmu_wr(ctx, cmu_type, CMU_REG35, val);


 cmu_rd(ctx, cmu_type, CMU_REG36, &val);
 val = CMU_REG36_PLL_SSC_VSTEP_SET(val, 30);
 val = CMU_REG36_PLL_SSC_EN_SET(val, 1);
 val = CMU_REG36_PLL_SSC_DSMSEL_SET(val, 1);
 cmu_wr(ctx, cmu_type, CMU_REG36, val);


 cmu_clrbits(ctx, cmu_type, CMU_REG5, CMU_REG5_PLL_RESETB_MASK);
 cmu_setbits(ctx, cmu_type, CMU_REG5, CMU_REG5_PLL_RESETB_MASK);


 cmu_toggle1to0(ctx, cmu_type, CMU_REG32,
         CMU_REG32_FORCE_VCOCAL_START_MASK);
}
