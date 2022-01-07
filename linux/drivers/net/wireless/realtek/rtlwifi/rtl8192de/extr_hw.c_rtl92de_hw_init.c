
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtl_ps_ctl {scalar_t__ rfpwr_state; } ;
struct TYPE_4__ {int fw_current_inpsmode; } ;
struct rtl_phy {int current_channel; void** rfreg_chnlval; int rf_mode; } ;
struct rtl_priv {TYPE_3__* cfg; TYPE_1__ psc; struct rtl_phy phy; } ;
struct rtl_pci {int being_init_adapter; int init_ready; int receive_config; } ;
struct rtl_mac {int mac_addr; scalar_t__ rdg_en; } ;
struct rtl_hal {scalar_t__ current_bandtype; scalar_t__ interfaceindex; scalar_t__ macphymode; scalar_t__ earlymode_enable; scalar_t__ last_hmeboxnum; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,int ) ;} ;


 scalar_t__ BAND_ON_2_4G ;
 int BCCKEN ;
 int BIT (int) ;
 int BOFDMEN ;
 int COMP_ERR ;
 int COMP_INIT ;
 int DBG_LOUD ;
 int DBG_WARNING ;
 scalar_t__ DUALMAC_DUALPHY ;
 scalar_t__ ERFON ;
 int HW_VAR_ETHER_ADDR ;
 int MASKDWORD ;
 int MAX_STALL_TIME ;
 int RCR_ACRC32 ;
 int RCR_AICV ;
 int REG_RCR ;
 int REG_RD_CTRL ;
 int REG_RD_NAV_NXT ;
 int REG_RD_RESP_PKT_TH ;
 scalar_t__ RF90_PATH_A ;
 int RFPGA0_ANALOGPARAMETER2 ;
 int RFPGA0_ANALOGPARAMETER4 ;
 int RFPGA0_RFMOD ;
 int RFREG_OFFSET_MASK ;
 int RF_CHNLBW ;
 int RF_OP_BY_SW_3WIRE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int _rtl92de_enable_aspm_back_door (struct ieee80211_hw*) ;
 int _rtl92de_hw_configure (struct ieee80211_hw*) ;
 int _rtl92de_init_mac (struct ieee80211_hw*) ;
 int globalmutex_for_power_and_efuse ;
 int pr_err (char*) ;
 int rtl92d_dm_init (struct ieee80211_hw*) ;
 int rtl92d_download_fw (struct ieee80211_hw*) ;
 int rtl92d_phy_bb_config (struct ieee80211_hw*) ;
 int rtl92d_phy_get_hw_reg_originalvalue (struct ieee80211_hw*) ;
 int rtl92d_phy_lc_calibrate (struct ieee80211_hw*) ;
 int rtl92d_phy_mac_config (struct ieee80211_hw*) ;
 int rtl92d_phy_reset_iqk_result (struct ieee80211_hw*) ;
 int rtl92d_phy_rf_config (struct ieee80211_hw*) ;
 int rtl92d_phy_set_txpower_level (struct ieee80211_hw*,int ) ;
 int rtl92d_update_bbrf_configuration (struct ieee80211_hw*) ;
 int rtl92de_enable_hw_security_config (struct ieee80211_hw*) ;
 int rtl_cam_reset_all_entry (struct ieee80211_hw*) ;
 void* rtl_get_rfreg (struct ieee80211_hw*,int,int,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int rtl_read_byte (struct rtl_priv*,int) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,int) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ieee80211_hw*,int ,int ) ;
 int udelay (int ) ;

int rtl92de_hw_init(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 bool rtstatus = 1;
 u8 tmp_u1b;
 int i;
 int err;
 unsigned long flags;

 rtlpci->being_init_adapter = 1;
 rtlpci->init_ready = 0;
 spin_lock_irqsave(&globalmutex_for_power_and_efuse, flags);

 rtl92d_phy_reset_iqk_result(hw);

 rtstatus = _rtl92de_init_mac(hw);
 if (!rtstatus) {
  pr_err("Init MAC failed\n");
  err = 1;
  spin_unlock_irqrestore(&globalmutex_for_power_and_efuse, flags);
  return err;
 }
 err = rtl92d_download_fw(hw);
 spin_unlock_irqrestore(&globalmutex_for_power_and_efuse, flags);
 if (err) {
  RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
    "Failed to download FW. Init HW without FW..\n");
  return 1;
 }
 rtlhal->last_hmeboxnum = 0;
 rtlpriv->psc.fw_current_inpsmode = 0;

 tmp_u1b = rtl_read_byte(rtlpriv, 0x605);
 tmp_u1b = tmp_u1b | 0x30;
 rtl_write_byte(rtlpriv, 0x605, tmp_u1b);

 if (rtlhal->earlymode_enable) {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "EarlyMode Enabled!!!\n");

  tmp_u1b = rtl_read_byte(rtlpriv, 0x4d0);
  tmp_u1b = tmp_u1b | 0x1f;
  rtl_write_byte(rtlpriv, 0x4d0, tmp_u1b);

  rtl_write_byte(rtlpriv, 0x4d3, 0x80);

  tmp_u1b = rtl_read_byte(rtlpriv, 0x605);
  tmp_u1b = tmp_u1b | 0x40;
  rtl_write_byte(rtlpriv, 0x605, tmp_u1b);
 }

 if (mac->rdg_en) {
  rtl_write_byte(rtlpriv, REG_RD_CTRL, 0xff);
  rtl_write_word(rtlpriv, REG_RD_NAV_NXT, 0x200);
  rtl_write_byte(rtlpriv, REG_RD_RESP_PKT_TH, 0x05);
 }

 rtl92d_phy_mac_config(hw);




 rtlpci->receive_config = rtl_read_dword(rtlpriv, REG_RCR);
 rtlpci->receive_config &= ~(RCR_ACRC32 | RCR_AICV);

 rtl92d_phy_bb_config(hw);

 rtlphy->rf_mode = RF_OP_BY_SW_3WIRE;

 rtl_set_bbreg(hw, RFPGA0_ANALOGPARAMETER4, 0x00f00000, 0xf);


 rtl92d_phy_rf_config(hw);




 rtl92d_update_bbrf_configuration(hw);

 rtl_set_bbreg(hw, RFPGA0_ANALOGPARAMETER4, 0x00f00000, 0);
 rtlphy->rfreg_chnlval[0] = rtl_get_rfreg(hw, (enum radio_path)0,
   RF_CHNLBW, RFREG_OFFSET_MASK);
 rtlphy->rfreg_chnlval[1] = rtl_get_rfreg(hw, (enum radio_path)1,
   RF_CHNLBW, RFREG_OFFSET_MASK);


 if (rtlhal->current_bandtype == BAND_ON_2_4G)
  rtl_set_bbreg(hw, RFPGA0_RFMOD, BCCKEN, 0x1);
 rtl_set_bbreg(hw, RFPGA0_RFMOD, BOFDMEN, 0x1);
 if (rtlhal->interfaceindex == 0) {


  rtl_set_bbreg(hw, RFPGA0_ANALOGPARAMETER2, BIT(10) |
         BIT(11), 3);
 } else {

  rtl_set_bbreg(hw, RFPGA0_ANALOGPARAMETER2, BIT(11) |
         BIT(10), 3);
 }

 _rtl92de_hw_configure(hw);


 rtl_cam_reset_all_entry(hw);
 rtl92de_enable_hw_security_config(hw);



 rtl92d_phy_get_hw_reg_originalvalue(hw);
 rtl92d_phy_set_txpower_level(hw, rtlphy->current_channel);

 ppsc->rfpwr_state = ERFON;

 rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_ETHER_ADDR, mac->mac_addr);

 _rtl92de_enable_aspm_back_door(hw);


 rtl92d_dm_init(hw);
 rtlpci->being_init_adapter = 0;

 if (ppsc->rfpwr_state == ERFON) {
  rtl92d_phy_lc_calibrate(hw);

  if (rtlhal->macphymode == DUALMAC_DUALPHY) {
   u32 tmp_rega;
   for (i = 0; i < 10000; i++) {
    udelay(MAX_STALL_TIME);

    tmp_rega = rtl_get_rfreg(hw,
        (enum radio_path)RF90_PATH_A,
        0x2a, MASKDWORD);

    if (((tmp_rega & BIT(11)) == BIT(11)))
     break;
   }

   if (i == 10000) {
    rtlpci->init_ready = 0;
    return 1;
   }
  }
 }
 rtlpci->init_ready = 1;
 return err;
}
