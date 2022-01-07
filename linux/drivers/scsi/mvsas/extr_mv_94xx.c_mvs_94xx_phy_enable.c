
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct mvs_info {TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ revision; } ;


 int CMD_APP_MEM_CTL ;
 int CMD_HOST_RD_DATA ;
 scalar_t__ VANIR_A0_REV ;
 scalar_t__ VANIR_B0_REV ;
 int VSR_PHY_MODE2 ;
 int bit (int ) ;
 int mvs_read_port_vsr_data (struct mvs_info*,int) ;
 int mvs_write_port_vsr_addr (struct mvs_info*,int,int ) ;
 int mvs_write_port_vsr_data (struct mvs_info*,int,int) ;

__attribute__((used)) static void mvs_94xx_phy_enable(struct mvs_info *mvi, u32 phy_id)
{
 u32 tmp;
 u8 revision = 0;

 revision = mvi->pdev->revision;
 if (revision == VANIR_A0_REV) {
  mvs_write_port_vsr_addr(mvi, phy_id, CMD_HOST_RD_DATA);
  mvs_write_port_vsr_data(mvi, phy_id, 0x8300ffc1);
 }
 if (revision == VANIR_B0_REV) {
  mvs_write_port_vsr_addr(mvi, phy_id, CMD_APP_MEM_CTL);
  mvs_write_port_vsr_data(mvi, phy_id, 0x08001006);
  mvs_write_port_vsr_addr(mvi, phy_id, CMD_HOST_RD_DATA);
  mvs_write_port_vsr_data(mvi, phy_id, 0x0000705f);
 }

 mvs_write_port_vsr_addr(mvi, phy_id, VSR_PHY_MODE2);
 tmp = mvs_read_port_vsr_data(mvi, phy_id);
 tmp |= bit(0);
 mvs_write_port_vsr_data(mvi, phy_id, tmp & 0xfd7fffff);
}
