
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mvs_port {unsigned int wide_port_phymap; scalar_t__ port_attached; } ;
struct mvs_phy {int irq_status; int phy_attached; int phy_type; struct mvs_port* port; } ;
struct mvs_info {struct mvs_phy* phy; } ;
struct TYPE_2__ {int (* read_phy_ctl ) (struct mvs_info*,int) ;} ;


 TYPE_1__* MVS_CHIP_DISP ;
 int PHYEV_POOF ;
 int PHY_READY_MASK ;
 int PORT_TYPE_SAS ;
 int PORT_TYPE_SATA ;
 int mvs_update_wideport (struct mvs_info*,int) ;
 int stub1 (struct mvs_info*,int) ;

__attribute__((used)) static u32 mvs_is_phy_ready(struct mvs_info *mvi, int i)
{
 u32 tmp;
 struct mvs_phy *phy = &mvi->phy[i];
 struct mvs_port *port = phy->port;

 tmp = MVS_CHIP_DISP->read_phy_ctl(mvi, i);
 if ((tmp & PHY_READY_MASK) && !(phy->irq_status & PHYEV_POOF)) {
  if (!port)
   phy->phy_attached = 1;
  return tmp;
 }

 if (port) {
  if (phy->phy_type & PORT_TYPE_SAS) {
   port->wide_port_phymap &= ~(1U << i);
   if (!port->wide_port_phymap)
    port->port_attached = 0;
   mvs_update_wideport(mvi, i);
  } else if (phy->phy_type & PORT_TYPE_SATA)
   port->port_attached = 0;
  phy->port = ((void*)0);
  phy->phy_attached = 0;
  phy->phy_type &= ~(PORT_TYPE_SAS | PORT_TYPE_SATA);
 }
 return 0;
}
