
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_phy {scalar_t__ att_dev_sas_addr; scalar_t__ att_dev_info; scalar_t__ phy_attached; } ;



__attribute__((used)) static void mvs_phy_disconnected(struct mvs_phy *phy)
{
 phy->phy_attached = 0;
 phy->att_dev_info = 0;
 phy->att_dev_sas_addr = 0;
}
