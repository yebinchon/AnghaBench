
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_phy_ctx {int dummy; } ;


 int serdes_rd (struct xgene_phy_ctx*,int,int ,int *) ;
 int serdes_wr (struct xgene_phy_ctx*,int,int ,int ) ;

__attribute__((used)) static void serdes_setbits(struct xgene_phy_ctx *ctx, int lane, u32 reg,
      u32 bits)
{
 u32 val;

 serdes_rd(ctx, lane, reg, &val);
 val |= bits;
 serdes_wr(ctx, lane, reg, val);
}
