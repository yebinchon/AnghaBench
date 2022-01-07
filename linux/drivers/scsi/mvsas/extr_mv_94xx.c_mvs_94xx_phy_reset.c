
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvs_info {int dummy; } ;


 int MVS_PHY_TUNE ;
 int PHYEV_RDY_CH ;
 int PHYR_SATA_CTL ;
 int PHY_RST ;
 int PHY_RST_HARD ;
 int mv_dprintk (char*) ;
 int mvs_read_phy_ctl (struct mvs_info*,int) ;
 int mvs_read_port_cfg_data (struct mvs_info*,int) ;
 int mvs_read_port_irq_stat (struct mvs_info*,int) ;
 int mvs_write_phy_ctl (struct mvs_info*,int,int) ;
 int mvs_write_port_cfg_addr (struct mvs_info*,int,int ) ;
 int mvs_write_port_cfg_data (struct mvs_info*,int,int) ;
 int mvs_write_port_irq_stat (struct mvs_info*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void mvs_94xx_phy_reset(struct mvs_info *mvi, u32 phy_id, int hard)
{
 u32 tmp;
 u32 delay = 5000;
 if (hard == MVS_PHY_TUNE) {
  mvs_write_port_cfg_addr(mvi, phy_id, PHYR_SATA_CTL);
  tmp = mvs_read_port_cfg_data(mvi, phy_id);
  mvs_write_port_cfg_data(mvi, phy_id, tmp|0x20000000);
  mvs_write_port_cfg_data(mvi, phy_id, tmp|0x100000);
  return;
 }
 tmp = mvs_read_port_irq_stat(mvi, phy_id);
 tmp &= ~PHYEV_RDY_CH;
 mvs_write_port_irq_stat(mvi, phy_id, tmp);
 if (hard) {
  tmp = mvs_read_phy_ctl(mvi, phy_id);
  tmp |= PHY_RST_HARD;
  mvs_write_phy_ctl(mvi, phy_id, tmp);
  do {
   tmp = mvs_read_phy_ctl(mvi, phy_id);
   udelay(10);
   delay--;
  } while ((tmp & PHY_RST_HARD) && delay);
  if (!delay)
   mv_dprintk("phy hard reset failed.\n");
 } else {
  tmp = mvs_read_phy_ctl(mvi, phy_id);
  tmp |= PHY_RST;
  mvs_write_phy_ctl(mvi, phy_id, tmp);
 }
}
