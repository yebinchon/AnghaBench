
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvs_info {int dummy; } ;


 int VSR_PHY_MODE2 ;
 int mvs_read_port_vsr_data (struct mvs_info*,int) ;
 int mvs_write_port_vsr_addr (struct mvs_info*,int,int ) ;
 int mvs_write_port_vsr_data (struct mvs_info*,int,int) ;

__attribute__((used)) static void mvs_94xx_phy_disable(struct mvs_info *mvi, u32 phy_id)
{
 u32 tmp;
 mvs_write_port_vsr_addr(mvi, phy_id, VSR_PHY_MODE2);
 tmp = mvs_read_port_vsr_data(mvi, phy_id);
 mvs_write_port_vsr_data(mvi, phy_id, tmp | 0x00800000);
}
