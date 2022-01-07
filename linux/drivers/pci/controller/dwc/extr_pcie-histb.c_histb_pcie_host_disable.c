
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct histb_pcie {scalar_t__ vpcie; int reset_gpio; int bus_clk; int sys_clk; int pipe_clk; int aux_clk; int bus_reset; int sys_reset; int soft_reset; } ;


 int clk_disable_unprepare (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value_cansleep (int ,int ) ;
 int regulator_disable (scalar_t__) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static void histb_pcie_host_disable(struct histb_pcie *hipcie)
{
 reset_control_assert(hipcie->soft_reset);
 reset_control_assert(hipcie->sys_reset);
 reset_control_assert(hipcie->bus_reset);

 clk_disable_unprepare(hipcie->aux_clk);
 clk_disable_unprepare(hipcie->pipe_clk);
 clk_disable_unprepare(hipcie->sys_clk);
 clk_disable_unprepare(hipcie->bus_clk);

 if (gpio_is_valid(hipcie->reset_gpio))
  gpio_set_value_cansleep(hipcie->reset_gpio, 0);

 if (hipcie->vpcie)
  regulator_disable(hipcie->vpcie);
}
