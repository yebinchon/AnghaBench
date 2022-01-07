
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
typedef int u32 ;
struct TYPE_10__ {int txbytesunicast; int rxbytesunicast; } ;
struct TYPE_6__ {int num_non_be_pkt; } ;
struct TYPE_9__ {int is_any_nonbepkts; int is_cur_rdlstate; int current_turbo_edca; int disable_framebursting; TYPE_1__ dbginfo; } ;
struct rtl_priv {TYPE_5__ stats; TYPE_4__ dm; TYPE_3__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_8__ {TYPE_2__* ops; } ;
struct TYPE_7__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,int *) ;} ;


 int AC0_BE ;
 int HW_VAR_AC_PARAM ;
 int REG_EDCA_BE_PARAM ;
 scalar_t__ rtl92ee_dm_is_edca_turbo_disable (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;
 int stub1 (struct ieee80211_hw*,int ,int *) ;

__attribute__((used)) static void rtl92ee_dm_check_edca_turbo(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 static u64 last_txok_cnt;
 static u64 last_rxok_cnt;
 u64 cur_txok_cnt = 0;
 u64 cur_rxok_cnt = 0;
 u32 edca_be_ul = 0x5ea42b;
 u32 edca_be_dl = 0x5ea42b;
 u32 edca_be = 0x5ea42b;
 bool is_cur_rdlstate;
 bool b_edca_turbo_on = 0;

 if (rtlpriv->dm.dbginfo.num_non_be_pkt > 0x100)
  rtlpriv->dm.is_any_nonbepkts = 1;
 rtlpriv->dm.dbginfo.num_non_be_pkt = 0;

 cur_txok_cnt = rtlpriv->stats.txbytesunicast - last_txok_cnt;
 cur_rxok_cnt = rtlpriv->stats.rxbytesunicast - last_rxok_cnt;


 b_edca_turbo_on = ((!rtlpriv->dm.is_any_nonbepkts) &&
      (!rtlpriv->dm.disable_framebursting)) ?
     1 : 0;

 if (rtl92ee_dm_is_edca_turbo_disable(hw))
  goto check_exit;

 if (b_edca_turbo_on) {
  is_cur_rdlstate = (cur_rxok_cnt > cur_txok_cnt * 4) ?
        1 : 0;

  edca_be = is_cur_rdlstate ? edca_be_dl : edca_be_ul;
  rtl_write_dword(rtlpriv , REG_EDCA_BE_PARAM , edca_be);
  rtlpriv->dm.is_cur_rdlstate = is_cur_rdlstate;
  rtlpriv->dm.current_turbo_edca = 1;
 } else {
  if (rtlpriv->dm.current_turbo_edca) {
   u8 tmp = AC0_BE;

   rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_AC_PARAM,
            (u8 *)(&tmp));
  }
  rtlpriv->dm.current_turbo_edca = 0;
 }

check_exit:
 rtlpriv->dm.is_any_nonbepkts = 0;
 last_txok_cnt = rtlpriv->stats.txbytesunicast;
 last_rxok_cnt = rtlpriv->stats.rxbytesunicast;
}
