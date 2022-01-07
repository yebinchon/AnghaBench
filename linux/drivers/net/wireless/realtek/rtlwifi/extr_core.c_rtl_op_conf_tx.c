
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct rtl_priv {TYPE_3__* cfg; } ;
struct rtl_mac {int * edca_param; TYPE_1__* ac; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int txop; int cw_max; int cw_min; int aifs; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* set_qos ) (struct ieee80211_hw*,int) ;} ;
struct TYPE_4__ {void* tx_op; void* cw_max; void* cw_min; int aifs; } ;


 scalar_t__ AC_MAX ;
 int COMP_ERR ;
 int DBG_WARNING ;
 int EINVAL ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,scalar_t__) ;
 int _rtl_get_hal_qnum (scalar_t__) ;
 void* cpu_to_le16 (int ) ;
 int memcpy (int *,struct ieee80211_tx_queue_params const*,int) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int) ;

__attribute__((used)) static int rtl_op_conf_tx(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif, u16 queue,
     const struct ieee80211_tx_queue_params *param)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 int aci;

 if (queue >= AC_MAX) {
  RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
    "queue number %d is incorrect!\n", queue);
  return -EINVAL;
 }

 aci = _rtl_get_hal_qnum(queue);
 mac->ac[aci].aifs = param->aifs;
 mac->ac[aci].cw_min = cpu_to_le16(param->cw_min);
 mac->ac[aci].cw_max = cpu_to_le16(param->cw_max);
 mac->ac[aci].tx_op = cpu_to_le16(param->txop);
 memcpy(&mac->edca_param[aci], param, sizeof(*param));
 rtlpriv->cfg->ops->set_qos(hw, aci);
 return 0;
}
