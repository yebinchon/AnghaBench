
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct rtl_phy {int current_channel; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_dm {int tx_rate; int* ofdm_index; int default_ofdm_index; int* absolute_ofdm_swing_idx; int remnant_cck_idx; int* remnant_ofdm_swing_idx; int modify_txagc_flag_path_a; int modify_txagc_flag_path_b; } ;
struct ieee80211_hw {int dummy; } ;
typedef int s8 ;
typedef enum pwr_track_control_method { ____Placeholder_pwr_track_control_method } pwr_track_control_method ;


 int BBSWING ;
 int COMP_POWER_TRACKING ;
 int DBG_LOUD ;
 int MGN_11M ;
 int MGN_1M ;
 int MGN_48M ;
 int MGN_54M ;
 int MGN_6M ;
 int MGN_MCS0 ;
 int MGN_MCS10 ;
 int MGN_MCS11 ;
 int MGN_MCS12 ;
 int MGN_MCS13 ;
 int MGN_MCS15 ;
 int MGN_MCS2 ;
 int MGN_MCS3 ;
 int MGN_MCS4 ;
 int MGN_MCS5 ;
 int MGN_MCS7 ;
 int MGN_MCS8 ;
 int MGN_VHT1SS_MCS0 ;
 int MGN_VHT1SS_MCS2 ;
 int MGN_VHT1SS_MCS3 ;
 int MGN_VHT1SS_MCS4 ;
 int MGN_VHT1SS_MCS5 ;
 int MGN_VHT1SS_MCS6 ;
 int MGN_VHT1SS_MCS7 ;
 int MGN_VHT1SS_MCS8 ;
 int MGN_VHT1SS_MCS9 ;
 int MGN_VHT2SS_MCS0 ;
 int MGN_VHT2SS_MCS2 ;
 int MGN_VHT2SS_MCS3 ;
 int MGN_VHT2SS_MCS4 ;
 int MGN_VHT2SS_MCS5 ;
 int MGN_VHT2SS_MCS6 ;
 int MGN_VHT2SS_MCS7 ;
 int MGN_VHT2SS_MCS8 ;
 int MGN_VHT2SS_MCS9 ;
 int MIX_MODE ;
 int RA_TXSCALE ;
 int RB_TXSCALE ;
 int RF90_PATH_A ;
 size_t RF90_PATH_B ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int rtl8821ae_hw_rate_to_mrate (struct ieee80211_hw*,int) ;
 int rtl8821ae_phy_set_txpower_level_by_path (struct ieee80211_hw*,int ,size_t) ;
 struct rtl_dm* rtl_dm (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,int ) ;
 int * txscaling_tbl ;

void rtl8812ae_dm_txpwr_track_set_pwr(struct ieee80211_hw *hw,
          enum pwr_track_control_method method,
          u8 rf_path, u8 channel_mapped_index)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_dm *rtldm = rtl_dm(rtl_priv(hw));
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 u32 final_swing_idx[2];
 u8 pwr_tracking_limit = 26;
 u8 tx_rate = 0xFF;
 s8 final_ofdm_swing_index = 0;

 if (rtldm->tx_rate != 0xFF)
  tx_rate =
   rtl8821ae_hw_rate_to_mrate(hw, rtldm->tx_rate);

 RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
   "===>rtl8812ae_dm_txpwr_track_set_pwr\n");

 if (tx_rate != 0xFF) {

  if ((tx_rate >= MGN_1M) && (tx_rate <= MGN_11M))
   pwr_tracking_limit = 32;

  else if ((tx_rate >= MGN_6M) && (tx_rate <= MGN_48M))
   pwr_tracking_limit = 30;
  else if (tx_rate == MGN_54M)
   pwr_tracking_limit = 28;


  else if ((tx_rate >= MGN_MCS0) && (tx_rate <= MGN_MCS2))
   pwr_tracking_limit = 34;

  else if ((tx_rate >= MGN_MCS3) && (tx_rate <= MGN_MCS4))
   pwr_tracking_limit = 30;

  else if ((tx_rate >= MGN_MCS5) && (tx_rate <= MGN_MCS7))
   pwr_tracking_limit = 28;

  else if ((tx_rate >= MGN_MCS8) && (tx_rate <= MGN_MCS10))
   pwr_tracking_limit = 34;

  else if ((tx_rate >= MGN_MCS11) && (tx_rate <= MGN_MCS12))
   pwr_tracking_limit = 30;

  else if ((tx_rate >= MGN_MCS13) && (tx_rate <= MGN_MCS15))
   pwr_tracking_limit = 28;



  else if ((tx_rate >= MGN_VHT1SS_MCS0) &&
    (tx_rate <= MGN_VHT1SS_MCS2))
   pwr_tracking_limit = 34;

  else if ((tx_rate >= MGN_VHT1SS_MCS3) &&
    (tx_rate <= MGN_VHT1SS_MCS4))
   pwr_tracking_limit = 30;

  else if ((tx_rate >= MGN_VHT1SS_MCS5) &&
    (tx_rate <= MGN_VHT1SS_MCS6))
   pwr_tracking_limit = 28;
  else if (tx_rate == MGN_VHT1SS_MCS7)
   pwr_tracking_limit = 26;
  else if (tx_rate == MGN_VHT1SS_MCS8)
   pwr_tracking_limit = 24;
  else if (tx_rate == MGN_VHT1SS_MCS9)
   pwr_tracking_limit = 22;

  else if ((tx_rate >= MGN_VHT2SS_MCS0) &&
    (tx_rate <= MGN_VHT2SS_MCS2))
   pwr_tracking_limit = 34;

  else if ((tx_rate >= MGN_VHT2SS_MCS3) &&
    (tx_rate <= MGN_VHT2SS_MCS4))
   pwr_tracking_limit = 30;

  else if ((tx_rate >= MGN_VHT2SS_MCS5) &&
    (tx_rate <= MGN_VHT2SS_MCS6))
   pwr_tracking_limit = 28;
  else if (tx_rate == MGN_VHT2SS_MCS7)
   pwr_tracking_limit = 26;
  else if (tx_rate == MGN_VHT2SS_MCS8)
   pwr_tracking_limit = 24;
  else if (tx_rate == MGN_VHT2SS_MCS9)
   pwr_tracking_limit = 22;
  else
   pwr_tracking_limit = 24;
 }
 RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
   "TxRate=0x%x, PwrTrackingLimit=%d\n",
   tx_rate, pwr_tracking_limit);

 if (method == BBSWING) {
  RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
    "===>rtl8812ae_dm_txpwr_track_set_pwr\n");

  if (rf_path == RF90_PATH_A) {
   u32 tmp;

   final_swing_idx[RF90_PATH_A] =
    (rtldm->ofdm_index[RF90_PATH_A] >
    pwr_tracking_limit) ?
    pwr_tracking_limit :
    rtldm->ofdm_index[RF90_PATH_A];
   tmp = final_swing_idx[RF90_PATH_A];
   RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
     "pDM_Odm->RFCalibrateInfo.OFDM_index[ODM_RF_PATH_A]=%d,pDM_Odm->RealBbSwingIdx[ODM_RF_PATH_A]=%d\n",
     rtldm->ofdm_index[RF90_PATH_A],
     final_swing_idx[RF90_PATH_A]);

   rtl_set_bbreg(hw, RA_TXSCALE, 0xFFE00000,
          txscaling_tbl[tmp]);
  } else {
   u32 tmp;

   final_swing_idx[RF90_PATH_B] =
    rtldm->ofdm_index[RF90_PATH_B] >
    pwr_tracking_limit ?
    pwr_tracking_limit :
    rtldm->ofdm_index[RF90_PATH_B];
   tmp = final_swing_idx[RF90_PATH_B];
   RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
     "pDM_Odm->RFCalibrateInfo.OFDM_index[ODM_RF_PATH_B]=%d, pDM_Odm->RealBbSwingIdx[ODM_RF_PATH_B]=%d\n",
     rtldm->ofdm_index[RF90_PATH_B],
     final_swing_idx[RF90_PATH_B]);

   rtl_set_bbreg(hw, RB_TXSCALE, 0xFFE00000,
          txscaling_tbl[tmp]);
  }
 } else if (method == MIX_MODE) {
  RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
    "pDM_Odm->DefaultOfdmIndex=%d, pDM_Odm->Absolute_OFDMSwingIdx[RFPath]=%d, RF_Path = %d\n",
    rtldm->default_ofdm_index,
    rtldm->absolute_ofdm_swing_idx[rf_path],
    rf_path);

  final_ofdm_swing_index = rtldm->default_ofdm_index +
    rtldm->absolute_ofdm_swing_idx[rf_path];

  if (rf_path == RF90_PATH_A) {

   if (final_ofdm_swing_index > pwr_tracking_limit) {
    rtldm->remnant_cck_idx =
     final_ofdm_swing_index -
     pwr_tracking_limit;



    rtldm->remnant_ofdm_swing_idx[rf_path] =
     final_ofdm_swing_index -
     pwr_tracking_limit;

    rtl_set_bbreg(hw, RA_TXSCALE, 0xFFE00000,
           txscaling_tbl[pwr_tracking_limit]);

    rtldm->modify_txagc_flag_path_a = 1;


    rtl8821ae_phy_set_txpower_level_by_path(hw,
     rtlphy->current_channel,
     RF90_PATH_A);

    RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
      "******Path_A Over BBSwing Limit ,PwrTrackingLimit = %d ,Remnant TxAGC Value = %d\n",
      pwr_tracking_limit,
      rtldm->remnant_ofdm_swing_idx[rf_path]);
   } else if (final_ofdm_swing_index < 0) {
    rtldm->remnant_cck_idx = final_ofdm_swing_index;

    rtldm->remnant_ofdm_swing_idx[rf_path] =
     final_ofdm_swing_index;

    rtl_set_bbreg(hw, RA_TXSCALE, 0xFFE00000,
     txscaling_tbl[0]);

    rtldm->modify_txagc_flag_path_a = 1;


    rtl8821ae_phy_set_txpower_level_by_path(hw,
     rtlphy->current_channel, RF90_PATH_A);

    RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
      "******Path_A Lower then BBSwing lower bound  0 , Remnant TxAGC Value = %d\n",
      rtldm->remnant_ofdm_swing_idx[rf_path]);
   } else {
    rtl_set_bbreg(hw, RA_TXSCALE, 0xFFE00000,
     txscaling_tbl[(u8)final_ofdm_swing_index]);

    RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
      "******Path_A Compensate with BBSwing, Final_OFDM_Swing_Index = %d\n",
     final_ofdm_swing_index);

    if (rtldm->modify_txagc_flag_path_a) {
     rtldm->remnant_cck_idx = 0;
     rtldm->remnant_ofdm_swing_idx[rf_path] = 0;


     rtl8821ae_phy_set_txpower_level_by_path(hw,
      rtlphy->current_channel, RF90_PATH_A);
     rtldm->modify_txagc_flag_path_a = 0;

     RT_TRACE(rtlpriv, COMP_POWER_TRACKING,
       DBG_LOUD,
       "******Path_A pDM_Odm->Modify_TxAGC_Flag = FALSE\n");
    }
   }
  }

  if (rf_path == RF90_PATH_B) {
   if (final_ofdm_swing_index > pwr_tracking_limit) {
    rtldm->remnant_ofdm_swing_idx[rf_path] =
     final_ofdm_swing_index -
     pwr_tracking_limit;

    rtl_set_bbreg(hw, RB_TXSCALE,
     0xFFE00000,
     txscaling_tbl[pwr_tracking_limit]);

    rtldm->modify_txagc_flag_path_b = 1;


    rtl8821ae_phy_set_txpower_level_by_path(hw,
     rtlphy->current_channel, RF90_PATH_B);

    RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
      "******Path_B Over BBSwing Limit , PwrTrackingLimit = %d , Remnant TxAGC Value = %d\n",
      pwr_tracking_limit,
      rtldm->remnant_ofdm_swing_idx[rf_path]);
   } else if (final_ofdm_swing_index < 0) {
    rtldm->remnant_ofdm_swing_idx[rf_path] =
     final_ofdm_swing_index;

    rtl_set_bbreg(hw, RB_TXSCALE, 0xFFE00000,
           txscaling_tbl[0]);

    rtldm->modify_txagc_flag_path_b = 1;


    rtl8821ae_phy_set_txpower_level_by_path(hw,
     rtlphy->current_channel, RF90_PATH_B);

    RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
      "******Path_B Lower then BBSwing lower bound  0 , Remnant TxAGC Value = %d\n",
      rtldm->remnant_ofdm_swing_idx[rf_path]);
   } else {
    rtl_set_bbreg(hw, RB_TXSCALE, 0xFFE00000,
     txscaling_tbl[(u8)final_ofdm_swing_index]);

    RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
      "******Path_B Compensate with BBSwing ,Final_OFDM_Swing_Index = %d\n",
     final_ofdm_swing_index);

    if (rtldm->modify_txagc_flag_path_b) {
     rtldm->remnant_ofdm_swing_idx[rf_path] = 0;


     rtl8821ae_phy_set_txpower_level_by_path(hw,
     rtlphy->current_channel, RF90_PATH_B);

     rtldm->modify_txagc_flag_path_b =
      0;

     RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
       "******Path_B pDM_Odm->Modify_TxAGC_Flag = FALSE\n");
    }
   }
  }
 } else {
  return;
 }
}
