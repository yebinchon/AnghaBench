
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sas_phy {int minimum_linkrate; int maximum_linkrate; void* minimum_linkrate_hw; void* maximum_linkrate_hw; void* negotiated_linkrate; } ;
struct TYPE_4__ {int oob_mode; void* linkrate; struct sas_phy* phy; } ;
struct asd_phy {TYPE_2__ sas_phy; TYPE_1__* phy_desc; } ;
struct TYPE_3__ {int min_sas_lrate; int max_sas_lrate; } ;





 void* SAS_LINK_RATE_1_5_GBPS ;
 void* SAS_LINK_RATE_3_0_GBPS ;
 void* SAS_LINK_RATE_6_0_GBPS ;
 int SAS_MODE ;
 int SAS_OOB_MODE ;
 int SATA_MODE ;
 int SATA_OOB_MODE ;

__attribute__((used)) static void get_lrate_mode(struct asd_phy *phy, u8 oob_mode)
{
 struct sas_phy *sas_phy = phy->sas_phy.phy;

 switch (oob_mode & 7) {
 case 128:

  phy->sas_phy.linkrate = SAS_LINK_RATE_6_0_GBPS;
  phy->sas_phy.phy->negotiated_linkrate = SAS_LINK_RATE_6_0_GBPS;
  break;
 case 129:
  phy->sas_phy.linkrate = SAS_LINK_RATE_3_0_GBPS;
  phy->sas_phy.phy->negotiated_linkrate = SAS_LINK_RATE_3_0_GBPS;
  break;
 case 130:
  phy->sas_phy.linkrate = SAS_LINK_RATE_1_5_GBPS;
  phy->sas_phy.phy->negotiated_linkrate = SAS_LINK_RATE_1_5_GBPS;
  break;
 }
 sas_phy->negotiated_linkrate = phy->sas_phy.linkrate;
 sas_phy->maximum_linkrate_hw = SAS_LINK_RATE_3_0_GBPS;
 sas_phy->minimum_linkrate_hw = SAS_LINK_RATE_1_5_GBPS;
 sas_phy->maximum_linkrate = phy->phy_desc->max_sas_lrate;
 sas_phy->minimum_linkrate = phy->phy_desc->min_sas_lrate;

 if (oob_mode & SAS_MODE)
  phy->sas_phy.oob_mode = SAS_OOB_MODE;
 else if (oob_mode & SATA_MODE)
  phy->sas_phy.oob_mode = SATA_OOB_MODE;
}
