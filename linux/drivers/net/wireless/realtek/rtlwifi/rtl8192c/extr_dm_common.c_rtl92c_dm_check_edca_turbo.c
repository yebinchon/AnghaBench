
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_10__ {int txbytesunicast; int rxbytesunicast; } ;
struct TYPE_9__ {int current_turbo_edca; int is_any_nonbepkts; int is_cur_rdlstate; int disable_framebursting; } ;
struct TYPE_6__ {scalar_t__ bt_edca_ul; scalar_t__ bt_edca_dl; int bt_coexistence; } ;
struct rtl_priv {TYPE_5__ stats; TYPE_4__ dm; TYPE_3__* cfg; TYPE_1__ btcoexist; } ;
struct rtl_mac {scalar_t__ link_state; int ht_enable; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_8__ {TYPE_2__* ops; } ;
struct TYPE_7__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,int *) ;} ;


 int AC0_BE ;
 int HW_VAR_AC_PARAM ;
 scalar_t__ MAC80211_LINKED ;
 int REG_EDCA_BE_PARAM ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,int ,scalar_t__) ;
 int stub1 (struct ieee80211_hw*,int ,int *) ;

__attribute__((used)) static void rtl92c_dm_check_edca_turbo(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));

 static u64 last_txok_cnt;
 static u64 last_rxok_cnt;
 static u32 last_bt_edca_ul;
 static u32 last_bt_edca_dl;
 u64 cur_txok_cnt = 0;
 u64 cur_rxok_cnt = 0;
 u32 edca_be_ul = 0x5ea42b;
 u32 edca_be_dl = 0x5ea42b;
 bool bt_change_edca = 0;

 if ((last_bt_edca_ul != rtlpriv->btcoexist.bt_edca_ul) ||
     (last_bt_edca_dl != rtlpriv->btcoexist.bt_edca_dl)) {
  rtlpriv->dm.current_turbo_edca = 0;
  last_bt_edca_ul = rtlpriv->btcoexist.bt_edca_ul;
  last_bt_edca_dl = rtlpriv->btcoexist.bt_edca_dl;
 }

 if (rtlpriv->btcoexist.bt_edca_ul != 0) {
  edca_be_ul = rtlpriv->btcoexist.bt_edca_ul;
  bt_change_edca = 1;
 }

 if (rtlpriv->btcoexist.bt_edca_dl != 0) {
  edca_be_ul = rtlpriv->btcoexist.bt_edca_dl;
  bt_change_edca = 1;
 }

 if (mac->link_state != MAC80211_LINKED) {
  rtlpriv->dm.current_turbo_edca = 0;
  return;
 }

 if ((!mac->ht_enable) && (!rtlpriv->btcoexist.bt_coexistence)) {
  if (!(edca_be_ul & 0xffff0000))
   edca_be_ul |= 0x005e0000;

  if (!(edca_be_dl & 0xffff0000))
   edca_be_dl |= 0x005e0000;
 }

 if ((bt_change_edca) || ((!rtlpriv->dm.is_any_nonbepkts) &&
      (!rtlpriv->dm.disable_framebursting))) {
  cur_txok_cnt = rtlpriv->stats.txbytesunicast - last_txok_cnt;
  cur_rxok_cnt = rtlpriv->stats.rxbytesunicast - last_rxok_cnt;

  if (cur_rxok_cnt > 4 * cur_txok_cnt) {
   if (!rtlpriv->dm.is_cur_rdlstate ||
       !rtlpriv->dm.current_turbo_edca) {
    rtl_write_dword(rtlpriv,
      REG_EDCA_BE_PARAM,
      edca_be_dl);
    rtlpriv->dm.is_cur_rdlstate = 1;
   }
  } else {
   if (rtlpriv->dm.is_cur_rdlstate ||
       !rtlpriv->dm.current_turbo_edca) {
    rtl_write_dword(rtlpriv,
      REG_EDCA_BE_PARAM,
      edca_be_ul);
    rtlpriv->dm.is_cur_rdlstate = 0;
   }
  }
  rtlpriv->dm.current_turbo_edca = 1;
 } else {
  if (rtlpriv->dm.current_turbo_edca) {
   u8 tmp = AC0_BE;

   rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_AC_PARAM,
            &tmp);
   rtlpriv->dm.current_turbo_edca = 0;
  }
 }

 rtlpriv->dm.is_any_nonbepkts = 0;
 last_txok_cnt = rtlpriv->stats.txbytesunicast;
 last_rxok_cnt = rtlpriv->stats.rxbytesunicast;
}
