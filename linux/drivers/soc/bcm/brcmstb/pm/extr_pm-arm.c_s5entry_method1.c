
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int num_memc; scalar_t__ phy_a_standby_ctrl_offs; scalar_t__ phy_b_standby_ctrl_offs; TYPE_1__* memcs; } ;
struct TYPE_3__ {scalar_t__ ddr_phy_base; } ;


 scalar_t__ DDR_PHY_NO_CHANNEL ;
 int DDR_PHY_RST_N ;
 int PWRDWN_SEQ_POWERDOWN_PLL ;
 int SHIMPHY_PAD_S3_PWRDWN_SEQ_MASK ;
 int SHIMPHY_PAD_S3_PWRDWN_SEQ_SHIFT ;
 TYPE_2__ ctrl ;
 int ddr_ctrl_set (int) ;
 int readl_relaxed (scalar_t__) ;
 int shimphy_set (int,int ) ;
 int wmb () ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static inline void s5entry_method1(void)
{
 int i;
 shimphy_set((PWRDWN_SEQ_POWERDOWN_PLL <<
      SHIMPHY_PAD_S3_PWRDWN_SEQ_SHIFT),
      ~SHIMPHY_PAD_S3_PWRDWN_SEQ_MASK);

 ddr_ctrl_set(0);

 for (i = 0; i < ctrl.num_memc; i++) {
  u32 tmp;


  tmp = readl_relaxed(ctrl.memcs[i].ddr_phy_base +
      ctrl.phy_a_standby_ctrl_offs);
  tmp &= ~(DDR_PHY_RST_N | DDR_PHY_RST_N);
  writel_relaxed(tmp, ctrl.memcs[i].ddr_phy_base +
        ctrl.phy_a_standby_ctrl_offs);


  if (ctrl.phy_b_standby_ctrl_offs != DDR_PHY_NO_CHANNEL) {
   tmp = readl_relaxed(ctrl.memcs[i].ddr_phy_base +
       ctrl.phy_b_standby_ctrl_offs);
   tmp &= ~(DDR_PHY_RST_N | DDR_PHY_RST_N);
   writel_relaxed(tmp, ctrl.memcs[i].ddr_phy_base +
         ctrl.phy_b_standby_ctrl_offs);
  }
 }

 wmb();
}
