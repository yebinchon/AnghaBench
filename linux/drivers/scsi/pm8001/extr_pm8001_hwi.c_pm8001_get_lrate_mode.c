
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sas_phy {void* minimum_linkrate; void* maximum_linkrate; void* minimum_linkrate_hw; void* maximum_linkrate_hw; void* negotiated_linkrate; } ;
struct TYPE_2__ {void* linkrate; struct sas_phy* phy; } ;
struct pm8001_phy {TYPE_1__ sas_phy; } ;






 void* SAS_LINK_RATE_12_0_GBPS ;
 void* SAS_LINK_RATE_1_5_GBPS ;
 void* SAS_LINK_RATE_3_0_GBPS ;
 void* SAS_LINK_RATE_6_0_GBPS ;

void pm8001_get_lrate_mode(struct pm8001_phy *phy, u8 link_rate)
{
 struct sas_phy *sas_phy = phy->sas_phy.phy;

 switch (link_rate) {
 case 131:
  phy->sas_phy.linkrate = SAS_LINK_RATE_12_0_GBPS;
  phy->sas_phy.phy->negotiated_linkrate = SAS_LINK_RATE_12_0_GBPS;
  break;
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
 sas_phy->maximum_linkrate_hw = SAS_LINK_RATE_6_0_GBPS;
 sas_phy->minimum_linkrate_hw = SAS_LINK_RATE_1_5_GBPS;
 sas_phy->maximum_linkrate = SAS_LINK_RATE_6_0_GBPS;
 sas_phy->minimum_linkrate = SAS_LINK_RATE_1_5_GBPS;
}
