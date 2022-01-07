
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sas_phy_linkrates {int maximum_linkrate; } ;
struct mvs_info {int dummy; } ;


 int PHY_RST_HARD ;
 int SAS_LINK_RATE_1_5_GBPS ;
 int mvs_94xx_phy_reset (struct mvs_info*,int,int ) ;
 int mvs_read_phy_ctl (struct mvs_info*,int) ;
 int mvs_write_phy_ctl (struct mvs_info*,int,int) ;

__attribute__((used)) static void mvs_94xx_phy_set_link_rate(struct mvs_info *mvi, u32 phy_id,
           struct sas_phy_linkrates *rates)
{
 u32 lrmax = 0;
 u32 tmp;

 tmp = mvs_read_phy_ctl(mvi, phy_id);
 lrmax = (rates->maximum_linkrate - SAS_LINK_RATE_1_5_GBPS) << 12;

 if (lrmax) {
  tmp &= ~(0x3 << 12);
  tmp |= lrmax;
 }
 mvs_write_phy_ctl(mvi, phy_id, tmp);
 mvs_94xx_phy_reset(mvi, phy_id, PHY_RST_HARD);
}
