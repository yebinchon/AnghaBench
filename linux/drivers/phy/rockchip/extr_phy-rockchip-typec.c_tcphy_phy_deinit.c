
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_typec_phy {int clk_ref; int clk_core; int pipe_rst; int uphy_rst; int tcphy_rst; } ;


 int clk_disable_unprepare (int ) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static void tcphy_phy_deinit(struct rockchip_typec_phy *tcphy)
{
 reset_control_assert(tcphy->tcphy_rst);
 reset_control_assert(tcphy->uphy_rst);
 reset_control_assert(tcphy->pipe_rst);
 clk_disable_unprepare(tcphy->clk_core);
 clk_disable_unprepare(tcphy->clk_ref);
}
