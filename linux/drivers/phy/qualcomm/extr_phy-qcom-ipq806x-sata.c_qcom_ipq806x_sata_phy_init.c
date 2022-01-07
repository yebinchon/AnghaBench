
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_ipq806x_sata_phy {scalar_t__ mmio; } ;
struct phy {int dummy; } ;


 scalar_t__ SATA_PHY_P0_PARAM0 ;
 int SATA_PHY_P0_PARAM0_P0_TX_PREEMPH_GEN1_MASK ;
 int SATA_PHY_P0_PARAM0_P0_TX_PREEMPH_GEN2_MASK ;
 int SATA_PHY_P0_PARAM0_P0_TX_PREEMPH_GEN3 (int) ;
 int SATA_PHY_P0_PARAM0_P0_TX_PREEMPH_GEN3_MASK ;
 scalar_t__ SATA_PHY_P0_PARAM1 ;
 int SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN1 (int) ;
 int SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN1_MASK ;
 int SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN2 (int) ;
 int SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN2_MASK ;
 int SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN3 (int) ;
 int SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN3_MASK ;
 scalar_t__ SATA_PHY_P0_PARAM2 ;
 int SATA_PHY_P0_PARAM2_RX_EQ (int) ;
 int SATA_PHY_P0_PARAM2_RX_EQ_MASK ;
 scalar_t__ SATA_PHY_P0_PARAM3 ;
 scalar_t__ SATA_PHY_P0_PARAM4 ;
 int SATA_PHY_REF_SSP_EN ;
 int SATA_PHY_RESET ;
 int SATA_PHY_SSC_EN ;
 int mb () ;
 struct qcom_ipq806x_sata_phy* phy_get_drvdata (struct phy*) ;
 int readl_relaxed (scalar_t__) ;
 int usleep_range (int,int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int qcom_ipq806x_sata_phy_init(struct phy *generic_phy)
{
 struct qcom_ipq806x_sata_phy *phy = phy_get_drvdata(generic_phy);
 u32 reg;


 reg = readl_relaxed(phy->mmio + SATA_PHY_P0_PARAM3);
 reg = reg | SATA_PHY_SSC_EN;
 writel_relaxed(reg, phy->mmio + SATA_PHY_P0_PARAM3);

 reg = readl_relaxed(phy->mmio + SATA_PHY_P0_PARAM0) &
   ~(SATA_PHY_P0_PARAM0_P0_TX_PREEMPH_GEN3_MASK |
     SATA_PHY_P0_PARAM0_P0_TX_PREEMPH_GEN2_MASK |
     SATA_PHY_P0_PARAM0_P0_TX_PREEMPH_GEN1_MASK);
 reg |= SATA_PHY_P0_PARAM0_P0_TX_PREEMPH_GEN3(0xf);
 writel_relaxed(reg, phy->mmio + SATA_PHY_P0_PARAM0);

 reg = readl_relaxed(phy->mmio + SATA_PHY_P0_PARAM1) &
   ~(SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN3_MASK |
     SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN2_MASK |
     SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN1_MASK);
 reg |= SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN3(0x55) |
  SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN2(0x55) |
  SATA_PHY_P0_PARAM1_P0_TX_AMPLITUDE_GEN1(0x55);
 writel_relaxed(reg, phy->mmio + SATA_PHY_P0_PARAM1);

 reg = readl_relaxed(phy->mmio + SATA_PHY_P0_PARAM2) &
  ~SATA_PHY_P0_PARAM2_RX_EQ_MASK;
 reg |= SATA_PHY_P0_PARAM2_RX_EQ(0x3);
 writel_relaxed(reg, phy->mmio + SATA_PHY_P0_PARAM2);


 reg = readl_relaxed(phy->mmio + SATA_PHY_P0_PARAM4);
 reg = reg | SATA_PHY_RESET;
 writel_relaxed(reg, phy->mmio + SATA_PHY_P0_PARAM4);


 reg = readl_relaxed(phy->mmio + SATA_PHY_P0_PARAM4);
 reg = reg | SATA_PHY_REF_SSP_EN | SATA_PHY_RESET;
 writel_relaxed(reg, phy->mmio + SATA_PHY_P0_PARAM4);


 mb();


 usleep_range(20, 20 + 50);


 reg = readl_relaxed(phy->mmio + SATA_PHY_P0_PARAM4);
 reg = reg & ~SATA_PHY_RESET;
 writel_relaxed(reg, phy->mmio + SATA_PHY_P0_PARAM4);

 return 0;
}
