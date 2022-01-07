
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int assoc_id; } ;
struct TYPE_3__ {int dm_flag; int dynamic_txpower_enable; } ;
struct rtl_phy {int current_channel; } ;
struct rtl_priv {TYPE_2__ mac80211; TYPE_1__ dm; struct rtl_phy phy; } ;
struct rtl_hal {int current_fwcmd_io; int set_fwcmd_inprogress; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_CMD ;
 int DBG_DMESG ;
 int DBG_LOUD ;
 int FW_ADD_A2_ENTRY ;
 int FW_CTRL_DM_BY_DRIVER ;
 int FW_IQK_ENABLE ;
 int FW_LPS_ENTER ;
 int FW_LPS_LEAVE ;
 int FW_RA_ACTIVE ;
 int FW_RA_DISABLE_RSSI_MASK ;
 int FW_RA_ENABLE_RSSI_MASK ;
 int FW_RA_IOT_BG_COMB ;
 int FW_RA_IOT_N_COMB ;
 int FW_RA_REFRESH ;
 int FW_RA_RESET ;
 int HAL_DM_HIPWR_DISABLE ;
 int MASKBYTE0 ;
 int MASKBYTE2 ;
 int RCCK0_CCA ;
 int ROFDM0_XAAGCCORE1 ;
 int ROFDM0_XBAGCCORE1 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int WFM5 ;
 int hal_get_firmwareversion (struct rtl_priv*) ;
 scalar_t__ is_hal_stop (struct rtl_hal*) ;
 int rtl92s_phy_chk_fwcmd_iodone (struct ieee80211_hw*) ;
 int rtl92s_phy_set_txpower (struct ieee80211_hw*,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int ,int) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void _rtl92s_phy_set_fwcmd_io(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 u32 input, current_aid = 0;

 if (is_hal_stop(rtlhal))
  return;

 if (hal_get_firmwareversion(rtlpriv) < 0x34)
  goto skip;


 switch (rtlhal->current_fwcmd_io) {
 case 131:
  rtlhal->current_fwcmd_io = 130;
  break;
 case 133:
  rtlhal->current_fwcmd_io = 132;
  break;
 default:
  break;
 }

skip:
 switch (rtlhal->current_fwcmd_io) {
 case 129:
  RT_TRACE(rtlpriv, COMP_CMD, DBG_DMESG, "FW_CMD_RA_RESET\n");
  rtl_write_dword(rtlpriv, WFM5, FW_RA_RESET);
  rtl92s_phy_chk_fwcmd_iodone(hw);
  break;
 case 134:
  RT_TRACE(rtlpriv, COMP_CMD, DBG_DMESG, "FW_CMD_RA_ACTIVE\n");
  rtl_write_dword(rtlpriv, WFM5, FW_RA_ACTIVE);
  rtl92s_phy_chk_fwcmd_iodone(hw);
  break;
 case 131:
  RT_TRACE(rtlpriv, COMP_CMD, DBG_DMESG, "FW_CMD_RA_REFRESH_N\n");
  input = FW_RA_REFRESH;
  rtl_write_dword(rtlpriv, WFM5, input);
  rtl92s_phy_chk_fwcmd_iodone(hw);
  rtl_write_dword(rtlpriv, WFM5, FW_RA_ENABLE_RSSI_MASK);
  rtl92s_phy_chk_fwcmd_iodone(hw);
  break;
 case 133:
  RT_TRACE(rtlpriv, COMP_CMD, DBG_DMESG,
    "FW_CMD_RA_REFRESH_BG\n");
  rtl_write_dword(rtlpriv, WFM5, FW_RA_REFRESH);
  rtl92s_phy_chk_fwcmd_iodone(hw);
  rtl_write_dword(rtlpriv, WFM5, FW_RA_DISABLE_RSSI_MASK);
  rtl92s_phy_chk_fwcmd_iodone(hw);
  break;
 case 130:
  RT_TRACE(rtlpriv, COMP_CMD, DBG_DMESG,
    "FW_CMD_RA_REFRESH_N_COMB\n");
  input = FW_RA_IOT_N_COMB;
  rtl_write_dword(rtlpriv, WFM5, input);
  rtl92s_phy_chk_fwcmd_iodone(hw);
  break;
 case 132:
  RT_TRACE(rtlpriv, COMP_CMD, DBG_DMESG,
    "FW_CMD_RA_REFRESH_BG_COMB\n");
  input = FW_RA_IOT_BG_COMB;
  rtl_write_dword(rtlpriv, WFM5, input);
  rtl92s_phy_chk_fwcmd_iodone(hw);
  break;
 case 138:
  RT_TRACE(rtlpriv, COMP_CMD, DBG_DMESG, "FW_CMD_IQK_ENABLE\n");
  rtl_write_dword(rtlpriv, WFM5, FW_IQK_ENABLE);
  rtl92s_phy_chk_fwcmd_iodone(hw);
  break;
 case 135:

  rtl_set_bbreg(hw, ROFDM0_XAAGCCORE1, MASKBYTE0, 0x17);
  rtl_set_bbreg(hw, ROFDM0_XBAGCCORE1, MASKBYTE0, 0x17);

  rtl_set_bbreg(hw, RCCK0_CCA, MASKBYTE2, 0x40);
  break;
 case 128:

  rtl_set_bbreg(hw, RCCK0_CCA, MASKBYTE2, 0xcd);
  rtl92s_phy_set_txpower(hw, rtlphy->current_channel);
  break;
 case 140:
  if (rtlpriv->dm.dm_flag & HAL_DM_HIPWR_DISABLE)
   break;


  rtl_set_bbreg(hw, ROFDM0_XAAGCCORE1, MASKBYTE0, 0x17);
  rtl_set_bbreg(hw, ROFDM0_XBAGCCORE1, MASKBYTE0, 0x17);

  rtl_set_bbreg(hw, RCCK0_CCA, MASKBYTE2, 0x40);
  break;
 case 139:
  if ((rtlpriv->dm.dm_flag & HAL_DM_HIPWR_DISABLE) ||
   rtlpriv->dm.dynamic_txpower_enable)
   break;


  rtl_set_bbreg(hw, RCCK0_CCA, MASKBYTE2, 0xcd);
  break;
 case 137:
  RT_TRACE(rtlpriv, COMP_CMD, DBG_DMESG, "FW_CMD_LPS_ENTER\n");
  current_aid = rtlpriv->mac80211.assoc_id;
  rtl_write_dword(rtlpriv, WFM5, (FW_LPS_ENTER |
    ((current_aid | 0xc000) << 8)));
  rtl92s_phy_chk_fwcmd_iodone(hw);


  break;
 case 136:
  RT_TRACE(rtlpriv, COMP_CMD, DBG_DMESG, "FW_CMD_LPS_LEAVE\n");
  rtl_write_dword(rtlpriv, WFM5, FW_LPS_LEAVE);
  rtl92s_phy_chk_fwcmd_iodone(hw);
  break;
 case 142:
  RT_TRACE(rtlpriv, COMP_CMD, DBG_DMESG, "FW_CMD_ADD_A2_ENTRY\n");
  rtl_write_dword(rtlpriv, WFM5, FW_ADD_A2_ENTRY);
  rtl92s_phy_chk_fwcmd_iodone(hw);
  break;
 case 141:
  RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD,
    "FW_CMD_CTRL_DM_BY_DRIVER\n");
  rtl_write_dword(rtlpriv, WFM5, FW_CTRL_DM_BY_DRIVER);
  rtl92s_phy_chk_fwcmd_iodone(hw);
  break;

 default:
  break;
 }

 rtl92s_phy_chk_fwcmd_iodone(hw);


 rtlhal->set_fwcmd_inprogress = 0;
}
