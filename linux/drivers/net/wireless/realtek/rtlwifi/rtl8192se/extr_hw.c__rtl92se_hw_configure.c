
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtl_phy {int rf_type; } ;
struct rtl_priv {TYPE_2__* cfg; struct rtl_phy phy; } ;
struct rtl_pci {int shortretry_limit; } ;
struct rtl_hal {int minspace_cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,int*) ;} ;


 int AMPDU_MIN_SPACE ;
 int BW_OPMODE ;
 int BW_OPMODE_20MHZ ;
 int HW_VAR_RETRY_LIMIT ;
 int INIRTSMCS_SEL ;
 int MAX_MSS_DENSITY_1T ;
 int MAX_MSS_DENSITY_2T ;
 int MLT ;
 int RATE_ALL_CCK ;
 int RATE_ALL_OFDM_AG ;




 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;
 int stub1 (struct ieee80211_hw*,int ,int*) ;

__attribute__((used)) static void _rtl92se_hw_configure(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 u8 reg_bw_opmode = 0;
 u32 reg_rrsr = 0;
 u8 regtmp = 0;

 reg_bw_opmode = BW_OPMODE_20MHZ;
 reg_rrsr = RATE_ALL_CCK | RATE_ALL_OFDM_AG;

 regtmp = rtl_read_byte(rtlpriv, INIRTSMCS_SEL);
 reg_rrsr = ((reg_rrsr & 0x000fffff) << 8) | regtmp;
 rtl_write_dword(rtlpriv, INIRTSMCS_SEL, reg_rrsr);
 rtl_write_byte(rtlpriv, BW_OPMODE, reg_bw_opmode);


 rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_RETRY_LIMIT,
   (u8 *)(&rtlpci->shortretry_limit));

 rtl_write_byte(rtlpriv, MLT, 0x8f);


 switch (rtlphy->rf_type) {
 case 130:
 case 131:
  rtlhal->minspace_cfg = (MAX_MSS_DENSITY_1T << 3);
  break;
 case 129:
 case 128:
  rtlhal->minspace_cfg = (MAX_MSS_DENSITY_2T << 3);
  break;
 }
 rtl_write_byte(rtlpriv, AMPDU_MIN_SPACE, rtlhal->minspace_cfg);
}
