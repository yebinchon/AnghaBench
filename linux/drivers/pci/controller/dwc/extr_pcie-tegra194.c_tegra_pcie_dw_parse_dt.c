
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_pcie_dw {int phy_count; int update_fc_fixup; void* enable_cdm_check; TYPE_1__* dev; void* supports_clkreq; int cid; int max_speed; int num_lanes; int aspm_l0s_enter_lat; int aspm_pwr_on_t; int aspm_cmrt; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;


 int dev_err (TYPE_1__*,char*,int) ;
 int dev_info (TYPE_1__*,char*,int) ;
 int of_pci_get_max_link_speed (struct device_node*) ;
 int of_property_count_strings (struct device_node*,char*) ;
 void* of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int of_property_read_u32_index (struct device_node*,char*,int,int *) ;

__attribute__((used)) static int tegra_pcie_dw_parse_dt(struct tegra_pcie_dw *pcie)
{
 struct device_node *np = pcie->dev->of_node;
 int ret;

 ret = of_property_read_u32(np, "nvidia,aspm-cmrt-us", &pcie->aspm_cmrt);
 if (ret < 0) {
  dev_info(pcie->dev, "Failed to read ASPM T_cmrt: %d\n", ret);
  return ret;
 }

 ret = of_property_read_u32(np, "nvidia,aspm-pwr-on-t-us",
       &pcie->aspm_pwr_on_t);
 if (ret < 0)
  dev_info(pcie->dev, "Failed to read ASPM Power On time: %d\n",
    ret);

 ret = of_property_read_u32(np, "nvidia,aspm-l0s-entrance-latency-us",
       &pcie->aspm_l0s_enter_lat);
 if (ret < 0)
  dev_info(pcie->dev,
    "Failed to read ASPM L0s Entrance latency: %d\n", ret);

 ret = of_property_read_u32(np, "num-lanes", &pcie->num_lanes);
 if (ret < 0) {
  dev_err(pcie->dev, "Failed to read num-lanes: %d\n", ret);
  return ret;
 }

 pcie->max_speed = of_pci_get_max_link_speed(np);

 ret = of_property_read_u32_index(np, "nvidia,bpmp", 1, &pcie->cid);
 if (ret) {
  dev_err(pcie->dev, "Failed to read Controller-ID: %d\n", ret);
  return ret;
 }

 ret = of_property_count_strings(np, "phy-names");
 if (ret < 0) {
  dev_err(pcie->dev, "Failed to find PHY entries: %d\n",
   ret);
  return ret;
 }
 pcie->phy_count = ret;

 if (of_property_read_bool(np, "nvidia,update-fc-fixup"))
  pcie->update_fc_fixup = 1;

 pcie->supports_clkreq =
  of_property_read_bool(pcie->dev->of_node, "supports-clkreq");

 pcie->enable_cdm_check =
  of_property_read_bool(np, "snps,enable-cdm-check");

 return 0;
}
