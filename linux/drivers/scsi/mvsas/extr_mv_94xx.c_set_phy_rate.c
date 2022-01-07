
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sas_support; int sata_support; int sata_host_mode; int speed_support; int snw_3_support; int tx_lnk_parity; int tx_spt_phs_lnk_rate; int tx_lgcl_lnk_rate; int disable_phy; } ;
union reg_phy_cfg {scalar_t__ v; TYPE_1__ u; } ;
typedef int u8 ;
struct mvs_info {int dummy; } ;


 int VSR_PHY_MODE2 ;
 scalar_t__ mvs_read_port_vsr_data (struct mvs_info*,int) ;
 int mvs_write_port_vsr_addr (struct mvs_info*,int,int ) ;
 int mvs_write_port_vsr_data (struct mvs_info*,int,scalar_t__) ;

__attribute__((used)) static void set_phy_rate(struct mvs_info *mvi, int phy_id, u8 rate)
{
 union reg_phy_cfg phy_cfg, phy_cfg_tmp;
 mvs_write_port_vsr_addr(mvi, phy_id, VSR_PHY_MODE2);
 phy_cfg_tmp.v = mvs_read_port_vsr_data(mvi, phy_id);
 phy_cfg.v = 0;
 phy_cfg.u.disable_phy = phy_cfg_tmp.u.disable_phy;
 phy_cfg.u.sas_support = 1;
 phy_cfg.u.sata_support = 1;
 phy_cfg.u.sata_host_mode = 1;

 switch (rate) {
 case 0x0:

  phy_cfg.u.speed_support = 1;
  phy_cfg.u.snw_3_support = 0;
  phy_cfg.u.tx_lnk_parity = 1;
  phy_cfg.u.tx_spt_phs_lnk_rate = 0x30;
  break;
 case 0x1:


  phy_cfg.u.speed_support = 3;
  phy_cfg.u.tx_spt_phs_lnk_rate = 0x3c;
  phy_cfg.u.tx_lgcl_lnk_rate = 0x08;
  break;
 case 0x2:
 default:

  phy_cfg.u.speed_support = 7;
  phy_cfg.u.snw_3_support = 1;
  phy_cfg.u.tx_lnk_parity = 1;
  phy_cfg.u.tx_spt_phs_lnk_rate = 0x3f;
  phy_cfg.u.tx_lgcl_lnk_rate = 0x09;
  break;
 }
 mvs_write_port_vsr_data(mvi, phy_id, phy_cfg.v);
}
