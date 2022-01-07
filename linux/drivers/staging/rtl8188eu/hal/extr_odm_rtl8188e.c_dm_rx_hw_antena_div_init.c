
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct odm_dm_struct {int* mp_mode; int AntDivType; struct adapter* Adapter; } ;
struct adapter {int dummy; } ;


 int BIT (int) ;
 int CGCS_RX_SW_ANTDIV ;
 int MAIN_ANT ;
 int ODM_REG_ANTDIV_PARA1_11N ;
 int ODM_REG_ANTSEL_PIN_11N ;
 int ODM_REG_ANT_MAPPING1_11N ;
 int ODM_REG_BB_PWR_SAV4_11N ;
 int ODM_REG_CCK_ANTDIV_PARA2_11N ;
 int ODM_REG_IGI_A_11N ;
 int ODM_REG_LNA_SWITCH_11N ;
 int ODM_REG_PIN_CTRL_11N ;
 int ODM_REG_RX_ANT_CTRL_11N ;
 int bMaskDWord ;
 int phy_query_bb_reg (struct adapter*,int ,int) ;
 int phy_set_bb_reg (struct adapter*,int ,int,int) ;
 int rtl88eu_dm_update_rx_idle_ant (struct odm_dm_struct*,int ) ;

__attribute__((used)) static void dm_rx_hw_antena_div_init(struct odm_dm_struct *dm_odm)
{
 struct adapter *adapter = dm_odm->Adapter;
 u32 value32;

 if (*dm_odm->mp_mode == 1) {
  dm_odm->AntDivType = CGCS_RX_SW_ANTDIV;
  phy_set_bb_reg(adapter, ODM_REG_IGI_A_11N, BIT(7), 0);
  phy_set_bb_reg(adapter, ODM_REG_LNA_SWITCH_11N, BIT(31), 1);
  return;
 }


 value32 = phy_query_bb_reg(adapter, ODM_REG_ANTSEL_PIN_11N, bMaskDWord);
 phy_set_bb_reg(adapter, ODM_REG_ANTSEL_PIN_11N, bMaskDWord,
         value32 | (BIT(23) | BIT(25)));

 phy_set_bb_reg(adapter, ODM_REG_PIN_CTRL_11N, BIT(9) | BIT(8), 0);
 phy_set_bb_reg(adapter, ODM_REG_RX_ANT_CTRL_11N, BIT(10), 0);
 phy_set_bb_reg(adapter, ODM_REG_LNA_SWITCH_11N, BIT(22), 1);
 phy_set_bb_reg(adapter, ODM_REG_LNA_SWITCH_11N, BIT(31), 1);

 phy_set_bb_reg(adapter, ODM_REG_ANTDIV_PARA1_11N, bMaskDWord,
         0x000000a0);

 phy_set_bb_reg(adapter, ODM_REG_BB_PWR_SAV4_11N, BIT(7), 1);
 phy_set_bb_reg(adapter, ODM_REG_CCK_ANTDIV_PARA2_11N, BIT(4), 1);
 rtl88eu_dm_update_rx_idle_ant(dm_odm, MAIN_ANT);
 phy_set_bb_reg(adapter, ODM_REG_ANT_MAPPING1_11N, 0xFFFF, 0x0201);
}
