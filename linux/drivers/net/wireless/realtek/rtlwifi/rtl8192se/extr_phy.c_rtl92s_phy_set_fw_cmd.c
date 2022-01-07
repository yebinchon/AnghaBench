
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int dm_flag; int thermalvalue; int dynamic_txpower_enable; } ;
struct dig_t {int dig_ext_port_stage; int dig_enable_flag; } ;
struct rtl_priv {TYPE_1__ dm; struct dig_t dm_digtable; } ;
struct rtl_hal {int set_fwcmd_inprogress; int current_fwcmd_io; } ;
struct rtl_efuse {int* thermalmeter; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum fwcmd_iotype { ____Placeholder_fwcmd_iotype } fwcmd_iotype ;


 int COMP_CMD ;
 int DBG_LOUD ;
 int DIG_EXT_PORT_STAGE_0 ;
 int DIG_EXT_PORT_STAGE_1 ;
 int FW_CMD_CTRL_DM_BY_DRIVER ;
 int FW_CMD_IO_CLR (struct rtl_priv*,int) ;
 int FW_CMD_IO_PARA_QUERY (struct rtl_priv*) ;
 int FW_CMD_IO_QUERY (struct rtl_priv*) ;
 int FW_CMD_IO_SET (struct rtl_priv*,int) ;


 int FW_CMD_PARA_SET (struct rtl_priv*,int) ;
 int FW_DIG_ENABLE_CTL ;
 int FW_DRIVER_CTRL_DM_CTL ;
 int FW_FA_CTL ;
 int FW_HIGH_PWR_ENABLE_CTL ;
 int FW_IQK_CTL ;
 int FW_PAPE_CTL_BY_SW_HW ;
 int FW_PWR_TRK_CTL ;
 int FW_PWR_TRK_PARAM_CLR ;
 int FW_RA_BG_CTL ;
 int FW_RA_INIT_CTL ;
 int FW_RA_N_CTL ;
 int FW_RA_PARAM_CLR ;
 int FW_SS_CTL ;
 int HAL_DM_DIG_DISABLE ;
 int HAL_DM_HIPWR_DISABLE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int _rtl92s_phy_set_fwcmd_io (struct ieee80211_hw*) ;
 int hal_get_firmwareversion (struct rtl_priv*) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

bool rtl92s_phy_set_fw_cmd(struct ieee80211_hw *hw, enum fwcmd_iotype fw_cmdio)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct dig_t *digtable = &rtlpriv->dm_digtable;
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 u32 fw_param = FW_CMD_IO_PARA_QUERY(rtlpriv);
 u16 fw_cmdmap = FW_CMD_IO_QUERY(rtlpriv);
 bool postprocessing = 0;

 RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD,
   "Set FW Cmd(%#x), set_fwcmd_inprogress(%d)\n",
   fw_cmdio, rtlhal->set_fwcmd_inprogress);

 do {


  if (hal_get_firmwareversion(rtlpriv) >= 0x35) {
   switch (fw_cmdio) {
   case 131:
    fw_cmdio = 130;
    break;
   case 133:
    fw_cmdio = 132;
    break;
   default:
    break;
   }
  } else {
   if ((fw_cmdio == 137) ||
       (fw_cmdio == 131) ||
       (fw_cmdio == 133)) {
    postprocessing = 1;
    break;
   }
  }



  if (hal_get_firmwareversion(rtlpriv) >= 0x3E) {
   if (fw_cmdio == FW_CMD_CTRL_DM_BY_DRIVER)
    fw_cmdio = 146;
  }




  switch (fw_cmdio) {
  case 134:
   RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD, "RA init!!\n");
   fw_cmdmap |= FW_RA_INIT_CTL;
   FW_CMD_IO_SET(rtlpriv, fw_cmdmap);

   FW_CMD_IO_CLR(rtlpriv, FW_RA_INIT_CTL);
   break;
  case 145:
   RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD,
     "Set DIG disable!!\n");
   fw_cmdmap &= ~FW_DIG_ENABLE_CTL;
   FW_CMD_IO_SET(rtlpriv, fw_cmdmap);
   break;
  case 144:
  case 140:
   if (!(rtlpriv->dm.dm_flag & HAL_DM_DIG_DISABLE)) {
    RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD,
      "Set DIG enable or resume!!\n");
    fw_cmdmap |= (FW_DIG_ENABLE_CTL | FW_SS_CTL);
    FW_CMD_IO_SET(rtlpriv, fw_cmdmap);
   }
   break;
  case 143:
   RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD,
     "Set DIG halt!!\n");
   fw_cmdmap &= ~(FW_DIG_ENABLE_CTL | FW_SS_CTL);
   FW_CMD_IO_SET(rtlpriv, fw_cmdmap);
   break;
  case 128: {
   u8 thermalval = 0;
   fw_cmdmap |= FW_PWR_TRK_CTL;


   fw_param &= FW_PWR_TRK_PARAM_CLR;

   thermalval = rtlpriv->dm.thermalvalue;
   fw_param |= ((thermalval << 24) |
         (rtlefuse->thermalmeter[0] << 16));

   RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD,
     "Set TxPwr tracking!! FwCmdMap(%#x), FwParam(%#x)\n",
     fw_cmdmap, fw_param);

   FW_CMD_PARA_SET(rtlpriv, fw_param);
   FW_CMD_IO_SET(rtlpriv, fw_cmdmap);


   FW_CMD_IO_CLR(rtlpriv, FW_PWR_TRK_CTL);
   }
   break;


  case 130:
   fw_cmdmap |= FW_RA_N_CTL;


   fw_cmdmap &= ~(FW_RA_BG_CTL | FW_RA_INIT_CTL);


   fw_param &= FW_RA_PARAM_CLR;

   RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD,
     "[FW CMD] [New Version] Set RA/IOT Comb in n mode!! FwCmdMap(%#x), FwParam(%#x)\n",
     fw_cmdmap, fw_param);

   FW_CMD_PARA_SET(rtlpriv, fw_param);
   FW_CMD_IO_SET(rtlpriv, fw_cmdmap);


   FW_CMD_IO_CLR(rtlpriv, FW_RA_N_CTL);
   break;
  case 132:
   fw_cmdmap |= FW_RA_BG_CTL;


   fw_cmdmap &= ~(FW_RA_N_CTL | FW_RA_INIT_CTL);

   fw_param &= FW_RA_PARAM_CLR;

   FW_CMD_PARA_SET(rtlpriv, fw_param);
   FW_CMD_IO_SET(rtlpriv, fw_cmdmap);


   FW_CMD_IO_CLR(rtlpriv, FW_RA_BG_CTL);
   break;
  case 137:
   fw_cmdmap |= FW_IQK_CTL;
   FW_CMD_IO_SET(rtlpriv, fw_cmdmap);

   FW_CMD_IO_CLR(rtlpriv, FW_IQK_CTL);
   break;

  case 146:
   fw_cmdmap |= FW_DRIVER_CTRL_DM_CTL;
   FW_CMD_IO_SET(rtlpriv, fw_cmdmap);
   break;

  case 129:
   fw_cmdmap |= (FW_DIG_ENABLE_CTL |
          FW_HIGH_PWR_ENABLE_CTL |
          FW_SS_CTL);

   if (rtlpriv->dm.dm_flag & HAL_DM_DIG_DISABLE ||
    !digtable->dig_enable_flag)
    fw_cmdmap &= ~FW_DIG_ENABLE_CTL;

   if ((rtlpriv->dm.dm_flag & HAL_DM_HIPWR_DISABLE) ||
       rtlpriv->dm.dynamic_txpower_enable)
    fw_cmdmap &= ~FW_HIGH_PWR_ENABLE_CTL;

   if ((digtable->dig_ext_port_stage ==
       DIG_EXT_PORT_STAGE_0) ||
       (digtable->dig_ext_port_stage ==
       DIG_EXT_PORT_STAGE_1))
    fw_cmdmap &= ~FW_DIG_ENABLE_CTL;

   FW_CMD_IO_SET(rtlpriv, fw_cmdmap);
   postprocessing = 1;
   break;
  case 135:
   fw_cmdmap &= ~(FW_DIG_ENABLE_CTL |
           FW_HIGH_PWR_ENABLE_CTL |
           FW_SS_CTL);
   FW_CMD_IO_SET(rtlpriv, fw_cmdmap);
   postprocessing = 1;
   break;
  case 139:
   fw_cmdmap &= ~FW_HIGH_PWR_ENABLE_CTL;
   FW_CMD_IO_SET(rtlpriv, fw_cmdmap);
   postprocessing = 1;
   break;
  case 138:
   if (!(rtlpriv->dm.dm_flag & HAL_DM_HIPWR_DISABLE) &&
       !rtlpriv->dm.dynamic_txpower_enable) {
    fw_cmdmap |= (FW_HIGH_PWR_ENABLE_CTL |
           FW_SS_CTL);
    FW_CMD_IO_SET(rtlpriv, fw_cmdmap);
    postprocessing = 1;
   }
   break;
  case 142:
   fw_cmdmap |= FW_FA_CTL;
   FW_CMD_IO_SET(rtlpriv, fw_cmdmap);
   break;
  case 141:
   fw_cmdmap &= ~FW_FA_CTL;
   FW_CMD_IO_SET(rtlpriv, fw_cmdmap);
   break;
  case 136:
   RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD,
     "[FW CMD] Set PAPE Control\n");
   fw_cmdmap &= ~FW_PAPE_CTL_BY_SW_HW;

   FW_CMD_IO_SET(rtlpriv, fw_cmdmap);
   break;
  default:


   postprocessing = 1;
   break;
  }
 } while (0);




 if (postprocessing && !rtlhal->set_fwcmd_inprogress) {
  rtlhal->set_fwcmd_inprogress = 1;

  rtlhal->current_fwcmd_io = fw_cmdio;
 } else {
  return 0;
 }

 _rtl92s_phy_set_fwcmd_io(hw);
 return 1;
}
