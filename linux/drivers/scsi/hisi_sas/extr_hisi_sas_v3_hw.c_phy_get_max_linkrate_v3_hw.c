
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sas_linkrate { ____Placeholder_sas_linkrate } sas_linkrate ;


 int SAS_LINK_RATE_12_0_GBPS ;

__attribute__((used)) static enum sas_linkrate phy_get_max_linkrate_v3_hw(void)
{
 return SAS_LINK_RATE_12_0_GBPS;
}
