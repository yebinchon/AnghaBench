
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rockchip_pcie {int dev; int vpcie3v3; } ;


 scalar_t__ IS_ERR (int ) ;
 int PCIE_RC_CONFIG_DCR ;
 int PCIE_RC_CONFIG_DCR_CPLS_SHIFT ;
 int PCIE_RC_CONFIG_DCR_CSPL_LIMIT ;
 int PCIE_RC_CONFIG_DCR_CSPL_SHIFT ;
 int dev_warn (int ,char*) ;
 int regulator_get_current_limit (int ) ;
 int rockchip_pcie_read (struct rockchip_pcie*,int ) ;
 int rockchip_pcie_write (struct rockchip_pcie*,int,int ) ;

__attribute__((used)) static void rockchip_pcie_set_power_limit(struct rockchip_pcie *rockchip)
{
 int curr;
 u32 status, scale, power;

 if (IS_ERR(rockchip->vpcie3v3))
  return;







 curr = regulator_get_current_limit(rockchip->vpcie3v3);
 if (curr <= 0)
  return;

 scale = 3;
 curr = curr / 1000;
 power = (curr * 3300) / 1000;
 while (power > PCIE_RC_CONFIG_DCR_CSPL_LIMIT) {
  if (!scale) {
   dev_warn(rockchip->dev, "invalid power supply\n");
   return;
  }
  scale--;
  power = power / 10;
 }

 status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_DCR);
 status |= (power << PCIE_RC_CONFIG_DCR_CSPL_SHIFT) |
    (scale << PCIE_RC_CONFIG_DCR_CPLS_SHIFT);
 rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_DCR);
}
