
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum sas_linkrate { ____Placeholder_sas_linkrate } sas_linkrate ;


 scalar_t__ SAS_LINK_RATE_1_5_GBPS ;

u8 hisi_sas_get_prog_phy_linkrate_mask(enum sas_linkrate max)
{
 u8 rate = 0;
 int i;

 max -= SAS_LINK_RATE_1_5_GBPS;
 for (i = 0; i <= max; i++)
  rate |= 1 << (i * 2);
 return rate;
}
