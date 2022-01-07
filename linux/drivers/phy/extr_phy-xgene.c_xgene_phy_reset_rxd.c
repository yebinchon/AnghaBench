
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_phy_ctx {int dummy; } ;


 int RXTX_REG7 ;
 int RXTX_REG7_RESETB_RXD_MASK ;
 int serdes_clrbits (struct xgene_phy_ctx*,int,int ,int ) ;
 int serdes_setbits (struct xgene_phy_ctx*,int,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void xgene_phy_reset_rxd(struct xgene_phy_ctx *ctx, int lane)
{

 serdes_clrbits(ctx, lane, RXTX_REG7, RXTX_REG7_RESETB_RXD_MASK);

 usleep_range(100, 150);
 serdes_setbits(ctx, lane, RXTX_REG7, RXTX_REG7_RESETB_RXD_MASK);
}
