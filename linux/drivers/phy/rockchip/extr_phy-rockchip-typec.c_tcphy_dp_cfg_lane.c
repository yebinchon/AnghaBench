
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rockchip_typec_phy {scalar_t__ base; } ;


 scalar_t__ TX_DIAG_TX_DRV (int ) ;
 scalar_t__ TX_PSC_A0 (int ) ;
 scalar_t__ TX_PSC_A1 (int ) ;
 scalar_t__ TX_PSC_A2 (int ) ;
 scalar_t__ TX_PSC_A3 (int ) ;
 scalar_t__ TX_TXCC_CAL_SCLR_MULT (int ) ;
 scalar_t__ TX_TXCC_CPOST_MULT_00 (int ) ;
 scalar_t__ TX_TXCC_CPOST_MULT_01 (int ) ;
 scalar_t__ TX_TXCC_CPOST_MULT_10 (int ) ;
 scalar_t__ TX_TXCC_CPOST_MULT_11 (int ) ;
 scalar_t__ TX_TXCC_MGNFS_MULT_000 (int ) ;
 scalar_t__ TX_TXCC_MGNFS_MULT_001 (int ) ;
 scalar_t__ TX_TXCC_MGNFS_MULT_010 (int ) ;
 scalar_t__ TX_TXCC_MGNFS_MULT_011 (int ) ;
 scalar_t__ TX_TXCC_MGNFS_MULT_100 (int ) ;
 scalar_t__ TX_TXCC_MGNFS_MULT_101 (int ) ;
 scalar_t__ TX_TXCC_MGNFS_MULT_110 (int ) ;
 scalar_t__ TX_TXCC_MGNFS_MULT_111 (int ) ;
 scalar_t__ XCVR_DIAG_PLLDRC_CTRL (int ) ;
 scalar_t__ XCVR_PSM_RCTRL (int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void tcphy_dp_cfg_lane(struct rockchip_typec_phy *tcphy, u32 lane)
{
 u16 rdata;

 writel(0xbefc, tcphy->base + XCVR_PSM_RCTRL(lane));
 writel(0x6799, tcphy->base + TX_PSC_A0(lane));
 writel(0x6798, tcphy->base + TX_PSC_A1(lane));
 writel(0x98, tcphy->base + TX_PSC_A2(lane));
 writel(0x98, tcphy->base + TX_PSC_A3(lane));

 writel(0, tcphy->base + TX_TXCC_MGNFS_MULT_000(lane));
 writel(0, tcphy->base + TX_TXCC_MGNFS_MULT_001(lane));
 writel(0, tcphy->base + TX_TXCC_MGNFS_MULT_010(lane));
 writel(0, tcphy->base + TX_TXCC_MGNFS_MULT_011(lane));
 writel(0, tcphy->base + TX_TXCC_MGNFS_MULT_100(lane));
 writel(0, tcphy->base + TX_TXCC_MGNFS_MULT_101(lane));
 writel(0, tcphy->base + TX_TXCC_MGNFS_MULT_110(lane));
 writel(0, tcphy->base + TX_TXCC_MGNFS_MULT_111(lane));
 writel(0, tcphy->base + TX_TXCC_CPOST_MULT_10(lane));
 writel(0, tcphy->base + TX_TXCC_CPOST_MULT_01(lane));
 writel(0, tcphy->base + TX_TXCC_CPOST_MULT_00(lane));
 writel(0, tcphy->base + TX_TXCC_CPOST_MULT_11(lane));

 writel(0x128, tcphy->base + TX_TXCC_CAL_SCLR_MULT(lane));
 writel(0x400, tcphy->base + TX_DIAG_TX_DRV(lane));

 rdata = readl(tcphy->base + XCVR_DIAG_PLLDRC_CTRL(lane));
 rdata = (rdata & 0x8fff) | 0x6000;
 writel(rdata, tcphy->base + XCVR_DIAG_PLLDRC_CTRL(lane));
}
