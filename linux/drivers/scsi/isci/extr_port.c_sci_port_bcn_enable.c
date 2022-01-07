
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct isci_port {struct isci_phy** phy_table; } ;
struct isci_phy {TYPE_1__* link_layer_registers; } ;
struct TYPE_2__ {int link_layer_control; } ;


 int ARRAY_SIZE (struct isci_phy**) ;
 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void sci_port_bcn_enable(struct isci_port *iport)
{
 struct isci_phy *iphy;
 u32 val;
 int i;

 for (i = 0; i < ARRAY_SIZE(iport->phy_table); i++) {
  iphy = iport->phy_table[i];
  if (!iphy)
   continue;
  val = readl(&iphy->link_layer_registers->link_layer_control);

  writel(val, &iphy->link_layer_registers->link_layer_control);
 }
}
