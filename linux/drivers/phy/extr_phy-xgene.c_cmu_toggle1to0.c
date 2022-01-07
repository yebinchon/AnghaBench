
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_phy_ctx {int dummy; } ;
typedef enum cmu_type_t { ____Placeholder_cmu_type_t } cmu_type_t ;


 int cmu_rd (struct xgene_phy_ctx*,int,int ,int *) ;
 int cmu_wr (struct xgene_phy_ctx*,int,int ,int ) ;

__attribute__((used)) static void cmu_toggle1to0(struct xgene_phy_ctx *ctx, enum cmu_type_t cmu_type,
      u32 reg, u32 bits)
{
 u32 val;

 cmu_rd(ctx, cmu_type, reg, &val);
 val |= bits;
 cmu_wr(ctx, cmu_type, reg, val);
 cmu_rd(ctx, cmu_type, reg, &val);
 val &= ~bits;
 cmu_wr(ctx, cmu_type, reg, val);
}
