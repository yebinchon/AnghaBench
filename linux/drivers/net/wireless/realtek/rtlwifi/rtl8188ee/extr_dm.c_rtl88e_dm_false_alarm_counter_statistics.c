
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct false_alarm_statistics {int cnt_fast_fsync_fail; int cnt_sb_search_fail; int cnt_ofdm_cca; int cnt_parity_fail; int cnt_rate_illegal; int cnt_crc8_fail; int cnt_mcs_fail; int cnt_ofdm_fail; int cnt_bw_lsc; int cnt_bw_usc; int cnt_cck_fail; int cnt_cck_cca; int cnt_all; int cnt_cca_all; } ;
struct rtl_priv {struct false_alarm_statistics falsealm_cnt; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_DIG ;
 int DBG_TRACE ;
 int MASKBYTE0 ;
 int MASKBYTE3 ;
 int MASKDWORD ;
 int RCCK0_CCA_CNT ;
 int RCCK0_FACOUNTERLOWER ;
 int RCCK0_FACOUNTERUPPER ;
 int RCCK0_FALSEALARMREPORT ;
 int REG_SC_CNT ;
 int ROFDM0_FRAMESYNC ;
 int ROFDM0_LSTF ;
 int ROFDM0_TRSWISOLATION ;
 int ROFDM1_LSTF ;
 int ROFDM_PHYCOUNTER1 ;
 int ROFDM_PHYCOUNTER2 ;
 int ROFDM_PHYCOUNTER3 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int,int,...) ;
 int rtl_get_bbreg (struct ieee80211_hw*,int ,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,int) ;

__attribute__((used)) static void rtl88e_dm_false_alarm_counter_statistics(struct ieee80211_hw *hw)
{
 u32 ret_value;
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct false_alarm_statistics *falsealm_cnt = &rtlpriv->falsealm_cnt;

 rtl_set_bbreg(hw, ROFDM0_LSTF, BIT(31), 1);
 rtl_set_bbreg(hw, ROFDM1_LSTF, BIT(31), 1);

 ret_value = rtl_get_bbreg(hw, ROFDM0_FRAMESYNC, MASKDWORD);
 falsealm_cnt->cnt_fast_fsync_fail = (ret_value&0xffff);
 falsealm_cnt->cnt_sb_search_fail = ((ret_value&0xffff0000)>>16);

 ret_value = rtl_get_bbreg(hw, ROFDM_PHYCOUNTER1, MASKDWORD);
 falsealm_cnt->cnt_ofdm_cca = (ret_value&0xffff);
 falsealm_cnt->cnt_parity_fail = ((ret_value & 0xffff0000) >> 16);

 ret_value = rtl_get_bbreg(hw, ROFDM_PHYCOUNTER2, MASKDWORD);
 falsealm_cnt->cnt_rate_illegal = (ret_value & 0xffff);
 falsealm_cnt->cnt_crc8_fail = ((ret_value & 0xffff0000) >> 16);

 ret_value = rtl_get_bbreg(hw, ROFDM_PHYCOUNTER3, MASKDWORD);
 falsealm_cnt->cnt_mcs_fail = (ret_value & 0xffff);
 falsealm_cnt->cnt_ofdm_fail = falsealm_cnt->cnt_parity_fail +
  falsealm_cnt->cnt_rate_illegal +
  falsealm_cnt->cnt_crc8_fail +
  falsealm_cnt->cnt_mcs_fail +
  falsealm_cnt->cnt_fast_fsync_fail +
  falsealm_cnt->cnt_sb_search_fail;

 ret_value = rtl_get_bbreg(hw, REG_SC_CNT, MASKDWORD);
 falsealm_cnt->cnt_bw_lsc = (ret_value & 0xffff);
 falsealm_cnt->cnt_bw_usc = ((ret_value & 0xffff0000) >> 16);

 rtl_set_bbreg(hw, RCCK0_FALSEALARMREPORT, BIT(12), 1);
 rtl_set_bbreg(hw, RCCK0_FALSEALARMREPORT, BIT(14), 1);

 ret_value = rtl_get_bbreg(hw, RCCK0_FACOUNTERLOWER, MASKBYTE0);
 falsealm_cnt->cnt_cck_fail = ret_value;

 ret_value = rtl_get_bbreg(hw, RCCK0_FACOUNTERUPPER, MASKBYTE3);
 falsealm_cnt->cnt_cck_fail += (ret_value & 0xff) << 8;

 ret_value = rtl_get_bbreg(hw, RCCK0_CCA_CNT, MASKDWORD);
 falsealm_cnt->cnt_cck_cca = ((ret_value & 0xff) << 8) |
  ((ret_value&0xFF00)>>8);

 falsealm_cnt->cnt_all = (falsealm_cnt->cnt_fast_fsync_fail +
    falsealm_cnt->cnt_sb_search_fail +
    falsealm_cnt->cnt_parity_fail +
    falsealm_cnt->cnt_rate_illegal +
    falsealm_cnt->cnt_crc8_fail +
    falsealm_cnt->cnt_mcs_fail +
    falsealm_cnt->cnt_cck_fail);
 falsealm_cnt->cnt_cca_all = falsealm_cnt->cnt_ofdm_cca +
  falsealm_cnt->cnt_cck_cca;

 rtl_set_bbreg(hw, ROFDM0_TRSWISOLATION, BIT(31), 1);
 rtl_set_bbreg(hw, ROFDM0_TRSWISOLATION, BIT(31), 0);
 rtl_set_bbreg(hw, ROFDM1_LSTF, BIT(27), 1);
 rtl_set_bbreg(hw, ROFDM1_LSTF, BIT(27), 0);
 rtl_set_bbreg(hw, ROFDM0_LSTF, BIT(31), 0);
 rtl_set_bbreg(hw, ROFDM1_LSTF, BIT(31), 0);
 rtl_set_bbreg(hw, RCCK0_FALSEALARMREPORT, BIT(13)|BIT(12), 0);
 rtl_set_bbreg(hw, RCCK0_FALSEALARMREPORT, BIT(13)|BIT(12), 2);
 rtl_set_bbreg(hw, RCCK0_FALSEALARMREPORT, BIT(15)|BIT(14), 0);
 rtl_set_bbreg(hw, RCCK0_FALSEALARMREPORT, BIT(15)|BIT(14), 2);

 RT_TRACE(rtlpriv, COMP_DIG, DBG_TRACE,
   "cnt_parity_fail = %d, cnt_rate_illegal = %d, cnt_crc8_fail = %d, cnt_mcs_fail = %d\n",
   falsealm_cnt->cnt_parity_fail,
   falsealm_cnt->cnt_rate_illegal,
   falsealm_cnt->cnt_crc8_fail, falsealm_cnt->cnt_mcs_fail);

 RT_TRACE(rtlpriv, COMP_DIG, DBG_TRACE,
   "cnt_ofdm_fail = %x, cnt_cck_fail = %x, cnt_all = %x\n",
   falsealm_cnt->cnt_ofdm_fail,
   falsealm_cnt->cnt_cck_fail, falsealm_cnt->cnt_all);
}
