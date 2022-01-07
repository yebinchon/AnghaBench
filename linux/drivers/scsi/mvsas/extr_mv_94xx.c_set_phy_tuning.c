
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct phy_tuning {int trans_emp_en; int trans_emp_amp; int trans_amp; int trans_amp_adj; } ;
struct mvs_info {TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ revision; } ;


 int GENERATION_1_2_SETTING ;
 int GENERATION_1_SETTING ;
 int GENERATION_2_3_SETTING ;
 int GENERATION_3_4_SETTING ;
 scalar_t__ VANIR_A0_REV ;
 int mvs_read_port_vsr_data (struct mvs_info*,int) ;
 int mvs_write_port_vsr_addr (struct mvs_info*,int,int) ;
 int mvs_write_port_vsr_data (struct mvs_info*,int,int) ;

__attribute__((used)) static void set_phy_tuning(struct mvs_info *mvi, int phy_id,
      struct phy_tuning phy_tuning)
{
 u32 tmp, setting_0 = 0, setting_1 = 0;
 u8 i;
 if (mvi->pdev->revision == VANIR_A0_REV)
  return;

 for (i = 0; i < 3; i++) {

  switch (i) {
  case 0:
   setting_0 = GENERATION_1_SETTING;
   setting_1 = GENERATION_1_2_SETTING;
   break;
  case 1:
   setting_0 = GENERATION_1_2_SETTING;
   setting_1 = GENERATION_2_3_SETTING;
   break;
  case 2:
   setting_0 = GENERATION_2_3_SETTING;
   setting_1 = GENERATION_3_4_SETTING;
   break;
  }







  mvs_write_port_vsr_addr(mvi, phy_id, setting_0);
  tmp = mvs_read_port_vsr_data(mvi, phy_id);
  tmp &= ~(0xFBE << 16);
  tmp |= (((phy_tuning.trans_emp_en << 11) |
   (phy_tuning.trans_emp_amp << 7) |
   (phy_tuning.trans_amp << 1)) << 16);
  mvs_write_port_vsr_data(mvi, phy_id, tmp);


  mvs_write_port_vsr_addr(mvi, phy_id, setting_1);
  tmp = mvs_read_port_vsr_data(mvi, phy_id);
  tmp &= ~(0xC000);
  tmp |= (phy_tuning.trans_amp_adj << 14);
  mvs_write_port_vsr_data(mvi, phy_id, tmp);
 }
}
