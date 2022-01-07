
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct rtl_ps_ctl {scalar_t__ rfpwr_state; } ;
struct TYPE_8__ {int conf_mutex; } ;
struct rtl_priv {TYPE_4__ locks; TYPE_3__* intf_ops; TYPE_2__* cfg; } ;
struct rtl_mac {int vendor; int bssid; int link_state; } ;
struct rtl_hal {scalar_t__ enter_pnp_sleep; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_7__ {int (* adapter_stop ) (struct ieee80211_hw*) ;} ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* get_hw_reg ) (struct ieee80211_hw*,int ,int *) ;} ;


 scalar_t__ ERFOFF ;
 int HAL_DEF_WOWLAN ;
 int MAC80211_NOLINK ;
 int PEER_UNKNOWN ;
 int eth_zero_addr (int ) ;
 scalar_t__ is_hal_stop (struct rtl_hal*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtl_cam_reset_sec_info (struct ieee80211_hw*) ;
 int rtl_deinit_deferred_work (struct ieee80211_hw*,int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 int rtl_ips_nic_on (struct ieee80211_hw*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int stub1 (struct ieee80211_hw*,int ,int *) ;
 int stub2 (struct ieee80211_hw*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void rtl_op_stop(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 bool support_remote_wakeup = 0;

 if (is_hal_stop(rtlhal))
  return;

 rtlpriv->cfg->ops->get_hw_reg(hw, HAL_DEF_WOWLAN,
          (u8 *)(&support_remote_wakeup));




 if (unlikely(ppsc->rfpwr_state == ERFOFF))
  rtl_ips_nic_on(hw);

 mutex_lock(&rtlpriv->locks.conf_mutex);

 if (!(support_remote_wakeup &&
       rtlhal->enter_pnp_sleep)) {
  mac->link_state = MAC80211_NOLINK;
  eth_zero_addr(mac->bssid);
  mac->vendor = PEER_UNKNOWN;


  rtl_cam_reset_sec_info(hw);

  rtl_deinit_deferred_work(hw, 0);
 }
 rtlpriv->intf_ops->adapter_stop(hw);

 mutex_unlock(&rtlpriv->locks.conf_mutex);
}
