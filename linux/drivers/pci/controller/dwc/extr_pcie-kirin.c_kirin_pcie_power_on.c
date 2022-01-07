
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kirin_pcie {int gpio_id_reset; int sysctrl; int crgctrl; } ;


 int CRGCTRL_PCIE_ASSERT_BIT ;
 int CRGCTRL_PCIE_ASSERT_OFFSET ;
 int PERST_2_ACCESS_MAX ;
 int PERST_2_ACCESS_MIN ;
 int REF_2_PERST_MAX ;
 int REF_2_PERST_MIN ;
 int SCTRL_PCIE_CMOS_BIT ;
 int SCTRL_PCIE_CMOS_OFFSET ;
 int SCTRL_PCIE_HPCLK_BIT ;
 int SCTRL_PCIE_HPCLK_OFFSET ;
 int SCTRL_PCIE_ISO_BIT ;
 int SCTRL_PCIE_ISO_OFFSET ;
 int TIME_CMOS_MAX ;
 int TIME_CMOS_MIN ;
 int gpio_direction_output (int ,int) ;
 int gpio_request (int ,char*) ;
 int kirin_pcie_clk_ctrl (struct kirin_pcie*,int) ;
 int kirin_pcie_oe_enable (struct kirin_pcie*) ;
 int kirin_pcie_phy_init (struct kirin_pcie*) ;
 int regmap_write (int ,int ,int ) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int kirin_pcie_power_on(struct kirin_pcie *kirin_pcie)
{
 int ret;


 regmap_write(kirin_pcie->sysctrl,
       SCTRL_PCIE_CMOS_OFFSET, SCTRL_PCIE_CMOS_BIT);
 usleep_range(TIME_CMOS_MIN, TIME_CMOS_MAX);
 kirin_pcie_oe_enable(kirin_pcie);

 ret = kirin_pcie_clk_ctrl(kirin_pcie, 1);
 if (ret)
  return ret;


 regmap_write(kirin_pcie->sysctrl,
       SCTRL_PCIE_ISO_OFFSET, SCTRL_PCIE_ISO_BIT);
 regmap_write(kirin_pcie->crgctrl,
       CRGCTRL_PCIE_ASSERT_OFFSET, CRGCTRL_PCIE_ASSERT_BIT);
 regmap_write(kirin_pcie->sysctrl,
       SCTRL_PCIE_HPCLK_OFFSET, SCTRL_PCIE_HPCLK_BIT);

 ret = kirin_pcie_phy_init(kirin_pcie);
 if (ret)
  goto close_clk;


 if (!gpio_request(kirin_pcie->gpio_id_reset, "pcie_perst")) {
  usleep_range(REF_2_PERST_MIN, REF_2_PERST_MAX);
  ret = gpio_direction_output(kirin_pcie->gpio_id_reset, 1);
  if (ret)
   goto close_clk;
  usleep_range(PERST_2_ACCESS_MIN, PERST_2_ACCESS_MAX);

  return 0;
 }

close_clk:
 kirin_pcie_clk_ctrl(kirin_pcie, 0);
 return ret;
}
