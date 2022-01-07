
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi_state {int clks; int num_clks; } ;


 int clk_bulk_disable_unprepare (int ,int ) ;

__attribute__((used)) static void mipi_csis_clk_disable(struct csi_state *state)
{
 clk_bulk_disable_unprepare(state->num_clks, state->clks);
}
