
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pmx {scalar_t__* regs; } ;
struct platform_device {int dummy; } ;


 int CLK_MUX_READ_ONLY ;
 int cdev1_parents ;
 int cdev2_parents ;
 int clk_register_mux (int *,char*,int ,int,int ,scalar_t__,int,int,int ,int *) ;
 struct tegra_pmx* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void tegra20_pinctrl_register_clock_muxes(struct platform_device *pdev)
{
 struct tegra_pmx *pmx = platform_get_drvdata(pdev);

 clk_register_mux(((void*)0), "cdev1_mux", cdev1_parents, 4, 0,
    pmx->regs[1] + 0x8, 2, 2, CLK_MUX_READ_ONLY, ((void*)0));

 clk_register_mux(((void*)0), "cdev2_mux", cdev2_parents, 4, 0,
    pmx->regs[1] + 0x8, 4, 2, CLK_MUX_READ_ONLY, ((void*)0));
}
