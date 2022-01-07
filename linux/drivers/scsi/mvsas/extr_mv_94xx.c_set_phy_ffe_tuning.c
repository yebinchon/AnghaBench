
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mvs_info {TYPE_1__* pdev; } ;
struct ffe_control {int ffe_rss_sel; int ffe_cap_sel; } ;
struct TYPE_2__ {scalar_t__ revision; } ;


 scalar_t__ VANIR_A0_REV ;
 scalar_t__ VANIR_B0_REV ;
 int VSR_PHY_DFE_UPDATE_CRTL ;
 int VSR_PHY_FFE_CONTROL ;
 int VSR_REF_CLOCK_CRTL ;
 int mvs_read_port_vsr_data (struct mvs_info*,int) ;
 int mvs_write_port_vsr_addr (struct mvs_info*,int,int ) ;
 int mvs_write_port_vsr_data (struct mvs_info*,int,int) ;

__attribute__((used)) static void set_phy_ffe_tuning(struct mvs_info *mvi, int phy_id,
          struct ffe_control ffe)
{
 u32 tmp;


 if ((mvi->pdev->revision == VANIR_A0_REV)
  || (mvi->pdev->revision == VANIR_B0_REV))
  return;
 mvs_write_port_vsr_addr(mvi, phy_id, VSR_PHY_FFE_CONTROL);
 tmp = mvs_read_port_vsr_data(mvi, phy_id);
 tmp &= ~0xFF;


 tmp |= ((0x1 << 7) |
  (ffe.ffe_rss_sel << 4) |
  (ffe.ffe_cap_sel << 0));

 mvs_write_port_vsr_data(mvi, phy_id, tmp);





 mvs_write_port_vsr_addr(mvi, phy_id, VSR_REF_CLOCK_CRTL);
 tmp = mvs_read_port_vsr_data(mvi, phy_id);
 tmp &= ~0x40001;


 tmp |= (0 << 18);
 mvs_write_port_vsr_data(mvi, phy_id, tmp);






 mvs_write_port_vsr_addr(mvi, phy_id, VSR_PHY_DFE_UPDATE_CRTL);
 tmp = mvs_read_port_vsr_data(mvi, phy_id);
 tmp &= ~0xFFF;


 tmp |= ((0x3F << 6) | (0x0 << 0));
 mvs_write_port_vsr_data(mvi, phy_id, tmp);





 mvs_write_port_vsr_addr(mvi, phy_id, VSR_REF_CLOCK_CRTL);
 tmp = mvs_read_port_vsr_data(mvi, phy_id);
 tmp &= ~0x8;


 tmp |= (0 << 3);
 mvs_write_port_vsr_data(mvi, phy_id, tmp);
}
