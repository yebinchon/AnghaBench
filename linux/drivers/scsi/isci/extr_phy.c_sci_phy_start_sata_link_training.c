
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_phy {int protocol; int sm; } ;


 int SAS_PROTOCOL_SATA ;
 int SCI_PHY_SUB_AWAIT_SATA_POWER ;
 int sci_change_state (int *,int ) ;

__attribute__((used)) static void sci_phy_start_sata_link_training(struct isci_phy *iphy)
{




 sci_change_state(&iphy->sm, SCI_PHY_SUB_AWAIT_SATA_POWER);

 iphy->protocol = SAS_PROTOCOL_SATA;
}
