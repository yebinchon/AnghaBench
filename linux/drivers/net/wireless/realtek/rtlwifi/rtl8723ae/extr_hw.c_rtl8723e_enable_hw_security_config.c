
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {scalar_t__ use_defaultkey; scalar_t__ use_sw_sec; int group_enc_algorithm; int pairwise_enc_algorithm; } ;
struct rtl_priv {TYPE_4__* cfg; TYPE_2__ sec; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_8__ {TYPE_3__* ops; TYPE_1__* mod_params; } ;
struct TYPE_7__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,int*) ;} ;
struct TYPE_5__ {scalar_t__ sw_crypto; } ;


 int COMP_INIT ;
 int COMP_SEC ;
 int DBG_DMESG ;
 int HW_VAR_WPA_CONFIG ;
 scalar_t__ REG_CR ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int SCR_RXBCUSEDK ;
 int SCR_RXDECENABLE ;
 int SCR_RXUSEDK ;
 int SCR_TXBCUSEDK ;
 int SCR_TXENCENABLE ;
 int SCR_TXUSEDK ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;
 int stub1 (struct ieee80211_hw*,int ,int*) ;

void rtl8723e_enable_hw_security_config(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 sec_reg_value;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG,
   "PairwiseEncAlgorithm = %d GroupEncAlgorithm = %d\n",
    rtlpriv->sec.pairwise_enc_algorithm,
    rtlpriv->sec.group_enc_algorithm);

 if (rtlpriv->cfg->mod_params->sw_crypto || rtlpriv->sec.use_sw_sec) {
  RT_TRACE(rtlpriv, COMP_SEC, DBG_DMESG,
    "not open hw encryption\n");
  return;
 }

 sec_reg_value = SCR_TXENCENABLE | SCR_RXDECENABLE;

 if (rtlpriv->sec.use_defaultkey) {
  sec_reg_value |= SCR_TXUSEDK;
  sec_reg_value |= SCR_RXUSEDK;
 }

 sec_reg_value |= (SCR_RXBCUSEDK | SCR_TXBCUSEDK);

 rtl_write_byte(rtlpriv, REG_CR + 1, 0x02);

 RT_TRACE(rtlpriv, COMP_SEC, DBG_DMESG,
   "The SECR-value %x\n", sec_reg_value);

 rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_WPA_CONFIG, &sec_reg_value);

}
