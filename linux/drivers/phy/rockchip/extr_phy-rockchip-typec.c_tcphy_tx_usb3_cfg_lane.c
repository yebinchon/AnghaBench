
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rockchip_typec_phy {scalar_t__ base; } ;


 scalar_t__ TX_PSC_A0 (int ) ;
 scalar_t__ TX_PSC_A1 (int ) ;
 scalar_t__ TX_PSC_A2 (int ) ;
 scalar_t__ TX_PSC_A3 (int ) ;
 scalar_t__ TX_TXCC_MGNFS_MULT_000 (int ) ;
 scalar_t__ XCVR_DIAG_BIDI_CTRL (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void tcphy_tx_usb3_cfg_lane(struct rockchip_typec_phy *tcphy, u32 lane)
{
 writel(0x7799, tcphy->base + TX_PSC_A0(lane));
 writel(0x7798, tcphy->base + TX_PSC_A1(lane));
 writel(0x5098, tcphy->base + TX_PSC_A2(lane));
 writel(0x5098, tcphy->base + TX_PSC_A3(lane));
 writel(0, tcphy->base + TX_TXCC_MGNFS_MULT_000(lane));
 writel(0xbf, tcphy->base + XCVR_DIAG_BIDI_CTRL(lane));
}
