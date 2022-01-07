
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rockchip_typec_phy {scalar_t__ base; } ;


 scalar_t__ RX_DIAG_SIGDET_TUNE (int ) ;
 scalar_t__ RX_PSC_A0 (int ) ;
 scalar_t__ RX_PSC_A1 (int ) ;
 scalar_t__ RX_PSC_A2 (int ) ;
 scalar_t__ RX_PSC_A3 (int ) ;
 scalar_t__ RX_PSC_CAL (int ) ;
 scalar_t__ RX_PSC_RDY (int ) ;
 scalar_t__ RX_REE_CTRL_DATA_MASK (int ) ;
 scalar_t__ RX_SIGDET_HL_FILT_TMR (int ) ;
 scalar_t__ XCVR_DIAG_BIDI_CTRL (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void tcphy_rx_usb3_cfg_lane(struct rockchip_typec_phy *tcphy, u32 lane)
{
 writel(0xa6fd, tcphy->base + RX_PSC_A0(lane));
 writel(0xa6fd, tcphy->base + RX_PSC_A1(lane));
 writel(0xa410, tcphy->base + RX_PSC_A2(lane));
 writel(0x2410, tcphy->base + RX_PSC_A3(lane));
 writel(0x23ff, tcphy->base + RX_PSC_CAL(lane));
 writel(0x13, tcphy->base + RX_SIGDET_HL_FILT_TMR(lane));
 writel(0x03e7, tcphy->base + RX_REE_CTRL_DATA_MASK(lane));
 writel(0x1004, tcphy->base + RX_DIAG_SIGDET_TUNE(lane));
 writel(0x2010, tcphy->base + RX_PSC_RDY(lane));
 writel(0xfb, tcphy->base + XCVR_DIAG_BIDI_CTRL(lane));
}
