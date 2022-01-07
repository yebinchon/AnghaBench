
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct miphy28lp_phy {int * syscfg_reg; scalar_t__ sata_gen; void* tx_impedance; void* ssc; void* px_rx_pol_inv; void* osc_rdy; void* osc_force_ext; } ;
struct device_node {int dummy; } ;


 scalar_t__ SATA_GEN1 ;
 int SYSCFG_REG_MAX ;
 void* of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;
 int of_property_read_u32_index (struct device_node*,char*,int,int *) ;

__attribute__((used)) static int miphy28lp_of_probe(struct device_node *np,
         struct miphy28lp_phy *miphy_phy)
{
 int i;
 u32 ctrlreg;

 miphy_phy->osc_force_ext =
  of_property_read_bool(np, "st,osc-force-ext");

 miphy_phy->osc_rdy = of_property_read_bool(np, "st,osc-rdy");

 miphy_phy->px_rx_pol_inv =
  of_property_read_bool(np, "st,px_rx_pol_inv");

 miphy_phy->ssc = of_property_read_bool(np, "st,ssc-on");

 miphy_phy->tx_impedance =
  of_property_read_bool(np, "st,tx-impedance-comp");

 of_property_read_u32(np, "st,sata-gen", &miphy_phy->sata_gen);
 if (!miphy_phy->sata_gen)
  miphy_phy->sata_gen = SATA_GEN1;

 for (i = 0; i < SYSCFG_REG_MAX; i++) {
  if (!of_property_read_u32_index(np, "st,syscfg", i, &ctrlreg))
   miphy_phy->syscfg_reg[i] = ctrlreg;
 }

 return 0;
}
