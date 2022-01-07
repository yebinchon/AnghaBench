
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi_state {int clks; int num_clks; } ;


 int clk_bulk_prepare_enable (int ,int ) ;

__attribute__((used)) static int mipi_csis_clk_enable(struct csi_state *state)
{
 return clk_bulk_prepare_enable(state->num_clks, state->clks);
}
