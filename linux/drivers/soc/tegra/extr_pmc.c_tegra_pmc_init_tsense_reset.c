
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_pmc {struct device* dev; TYPE_1__* soc; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;
struct TYPE_2__ {int has_tsense_reset; } ;


 int PMC_SCRATCH54 ;
 int PMC_SCRATCH54_ADDR_SHIFT ;
 int PMC_SCRATCH54_DATA_SHIFT ;
 int PMC_SCRATCH55 ;
 int PMC_SCRATCH55_CHECKSUM_SHIFT ;
 int PMC_SCRATCH55_CNTRL_ID_SHIFT ;
 int PMC_SCRATCH55_I2CSLV1_SHIFT ;
 int PMC_SCRATCH55_PINMUX_SHIFT ;
 int PMC_SCRATCH55_RESET_TEGRA ;
 int PMC_SENSOR_CTRL ;
 int PMC_SENSOR_CTRL_ENABLE_RST ;
 int PMC_SENSOR_CTRL_SCRATCH_WRITE ;
 int dev_err (struct device*,char*,char const*) ;
 int dev_info (struct device*,char*) ;
 int dev_warn (struct device*,char*,char const*) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;
 int tegra_pmc_readl (struct tegra_pmc*,int ) ;
 int tegra_pmc_writel (struct tegra_pmc*,int,int ) ;

__attribute__((used)) static void tegra_pmc_init_tsense_reset(struct tegra_pmc *pmc)
{
 static const char disabled[] = "emergency thermal reset disabled";
 u32 pmu_addr, ctrl_id, reg_addr, reg_data, pinmux;
 struct device *dev = pmc->dev;
 struct device_node *np;
 u32 value, checksum;

 if (!pmc->soc->has_tsense_reset)
  return;

 np = of_get_child_by_name(pmc->dev->of_node, "i2c-thermtrip");
 if (!np) {
  dev_warn(dev, "i2c-thermtrip node not found, %s.\n", disabled);
  return;
 }

 if (of_property_read_u32(np, "nvidia,i2c-controller-id", &ctrl_id)) {
  dev_err(dev, "I2C controller ID missing, %s.\n", disabled);
  goto out;
 }

 if (of_property_read_u32(np, "nvidia,bus-addr", &pmu_addr)) {
  dev_err(dev, "nvidia,bus-addr missing, %s.\n", disabled);
  goto out;
 }

 if (of_property_read_u32(np, "nvidia,reg-addr", &reg_addr)) {
  dev_err(dev, "nvidia,reg-addr missing, %s.\n", disabled);
  goto out;
 }

 if (of_property_read_u32(np, "nvidia,reg-data", &reg_data)) {
  dev_err(dev, "nvidia,reg-data missing, %s.\n", disabled);
  goto out;
 }

 if (of_property_read_u32(np, "nvidia,pinmux-id", &pinmux))
  pinmux = 0;

 value = tegra_pmc_readl(pmc, PMC_SENSOR_CTRL);
 value |= PMC_SENSOR_CTRL_SCRATCH_WRITE;
 tegra_pmc_writel(pmc, value, PMC_SENSOR_CTRL);

 value = (reg_data << PMC_SCRATCH54_DATA_SHIFT) |
  (reg_addr << PMC_SCRATCH54_ADDR_SHIFT);
 tegra_pmc_writel(pmc, value, PMC_SCRATCH54);

 value = PMC_SCRATCH55_RESET_TEGRA;
 value |= ctrl_id << PMC_SCRATCH55_CNTRL_ID_SHIFT;
 value |= pinmux << PMC_SCRATCH55_PINMUX_SHIFT;
 value |= pmu_addr << PMC_SCRATCH55_I2CSLV1_SHIFT;





 checksum = reg_addr + reg_data + (value & 0xff) + ((value >> 8) & 0xff)
  + ((value >> 24) & 0xff);
 checksum &= 0xff;
 checksum = 0x100 - checksum;

 value |= checksum << PMC_SCRATCH55_CHECKSUM_SHIFT;

 tegra_pmc_writel(pmc, value, PMC_SCRATCH55);

 value = tegra_pmc_readl(pmc, PMC_SENSOR_CTRL);
 value |= PMC_SENSOR_CTRL_ENABLE_RST;
 tegra_pmc_writel(pmc, value, PMC_SENSOR_CTRL);

 dev_info(pmc->dev, "emergency thermal reset enabled\n");

out:
 of_node_put(np);
}
