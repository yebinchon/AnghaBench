
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie_dw {scalar_t__ slot_ctl_3v3; scalar_t__ slot_ctl_12v; int dev; } ;


 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;

__attribute__((used)) static int tegra_pcie_enable_slot_regulators(struct tegra_pcie_dw *pcie)
{
 int ret;

 if (pcie->slot_ctl_3v3) {
  ret = regulator_enable(pcie->slot_ctl_3v3);
  if (ret < 0) {
   dev_err(pcie->dev,
    "Failed to enable 3.3V slot supply: %d\n", ret);
   return ret;
  }
 }

 if (pcie->slot_ctl_12v) {
  ret = regulator_enable(pcie->slot_ctl_12v);
  if (ret < 0) {
   dev_err(pcie->dev,
    "Failed to enable 12V slot supply: %d\n", ret);
   goto fail_12v_enable;
  }
 }






 if (pcie->slot_ctl_3v3 || pcie->slot_ctl_12v)
  msleep(100);

 return 0;

fail_12v_enable:
 if (pcie->slot_ctl_3v3)
  regulator_disable(pcie->slot_ctl_3v3);
 return ret;
}
