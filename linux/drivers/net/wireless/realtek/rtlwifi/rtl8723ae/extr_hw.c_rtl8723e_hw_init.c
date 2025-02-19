
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
struct TYPE_8__ {int being_init_adapter; } ;
struct rtl_phy {int iqk_initialized; void** rfreg_chnlval; int rf_mode; } ;
struct rtl_priv {TYPE_4__ rtlhal; TYPE_3__* intf_ops; TYPE_2__* cfg; struct rtl_phy phy; } ;
struct rtl_pci {int receive_config; } ;
struct rtl_mac {int mac_addr; } ;
struct rtl_hal {int fw_ready; int version; scalar_t__ last_hmeboxnum; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;
struct TYPE_7__ {int (* enable_aspm ) (struct ieee80211_hw*) ;int (* disable_aspm ) (struct ieee80211_hw*) ;} ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,int ) ;} ;


 int BCCKEN ;
 int BIT (int) ;
 int BOFDMEN ;
 int COMP_ERR ;
 int COMP_INIT ;
 int DBG_TRACE ;
 int DBG_WARNING ;
 scalar_t__ ERFON ;
 int FW_8723A_POLLING_TIMEOUT_COUNT ;
 int HW_VAR_ETHER_ADDR ;
 scalar_t__ IS_81XXC_VENDOR_UMC_B_CUT (int ) ;
 scalar_t__ IS_VENDOR_UMC_A_CUT (int ) ;
 int MASKDWORD ;
 int RCR_ACRC32 ;
 int RCR_AICV ;
 int REG_RCR ;
 int RF90_PATH_A ;
 int RFPGA0_ANALOGPARAMETER2 ;
 int RFPGA0_RFMOD ;
 int RFREG_OFFSET_MASK ;
 int RF_CHNLBW ;
 int RF_IPA ;
 int RF_OP_BY_SW_3WIRE ;
 int RF_RCK1 ;
 int RF_RCK2 ;
 int RF_RX_G1 ;
 int RF_RX_G2 ;
 int RF_SYN_G2 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int _rtl8712e_init_mac (struct ieee80211_hw*) ;
 int _rtl8723e_enable_aspm_back_door (struct ieee80211_hw*) ;
 int _rtl8723e_hw_configure (struct ieee80211_hw*) ;
 int efuse_read_1byte (struct ieee80211_hw*,int) ;
 int local_irq_enable () ;
 int local_irq_restore (unsigned long) ;
 int local_save_flags (unsigned long) ;
 int pr_err (char*) ;
 int rtl8723_download_fw (struct ieee80211_hw*,int,int ) ;
 int rtl8723e_bt_hw_init (struct ieee80211_hw*) ;
 int rtl8723e_dm_check_txpower_tracking (struct ieee80211_hw*) ;
 int rtl8723e_dm_init (struct ieee80211_hw*) ;
 int rtl8723e_enable_hw_security_config (struct ieee80211_hw*) ;
 int rtl8723e_phy_bb_config (struct ieee80211_hw*) ;
 int rtl8723e_phy_iq_calibrate (struct ieee80211_hw*,int) ;
 int rtl8723e_phy_lc_calibrate (struct ieee80211_hw*) ;
 int rtl8723e_phy_mac_config (struct ieee80211_hw*) ;
 int rtl8723e_phy_rf_config (struct ieee80211_hw*) ;
 int rtl8723e_phy_set_rfpath_switch (struct ieee80211_hw*,int) ;
 int rtl_cam_reset_all_entry (struct ieee80211_hw*) ;
 void* rtl_get_rfreg (struct ieee80211_hw*,int,int ,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int rtl_read_byte (struct rtl_priv*,int) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,int) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int ,int,int,int) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;
 int stub1 (struct ieee80211_hw*) ;
 int stub2 (struct ieee80211_hw*,int ,int ) ;
 int stub3 (struct ieee80211_hw*) ;
 int udelay (int) ;

int rtl8723e_hw_init(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 bool rtstatus = 1;
 int err;
 u8 tmp_u1b;
 unsigned long flags;

 rtlpriv->rtlhal.being_init_adapter = 1;







 local_save_flags(flags);
 local_irq_enable();
 rtlhal->fw_ready = 0;

 rtlpriv->intf_ops->disable_aspm(hw);
 rtstatus = _rtl8712e_init_mac(hw);
 if (rtstatus != 1) {
  pr_err("Init MAC failed\n");
  err = 1;
  goto exit;
 }

 err = rtl8723_download_fw(hw, 0, FW_8723A_POLLING_TIMEOUT_COUNT);
 if (err) {
  RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
    "Failed to download FW. Init HW without FW now..\n");
  err = 1;
  goto exit;
 }
 rtlhal->fw_ready = 1;

 rtlhal->last_hmeboxnum = 0;
 rtl8723e_phy_mac_config(hw);





 rtlpci->receive_config = rtl_read_dword(rtlpriv, REG_RCR);
 rtlpci->receive_config &= ~(RCR_ACRC32 | RCR_AICV);
 rtl_write_dword(rtlpriv, REG_RCR, rtlpci->receive_config);

 rtl8723e_phy_bb_config(hw);
 rtlphy->rf_mode = RF_OP_BY_SW_3WIRE;
 rtl8723e_phy_rf_config(hw);
 if (IS_VENDOR_UMC_A_CUT(rtlhal->version)) {
  rtl_set_rfreg(hw, RF90_PATH_A, RF_RX_G1, MASKDWORD, 0x30255);
  rtl_set_rfreg(hw, RF90_PATH_A, RF_RX_G2, MASKDWORD, 0x50a00);
 } else if (IS_81XXC_VENDOR_UMC_B_CUT(rtlhal->version)) {
  rtl_set_rfreg(hw, RF90_PATH_A, 0x0C, MASKDWORD, 0x894AE);
  rtl_set_rfreg(hw, RF90_PATH_A, 0x0A, MASKDWORD, 0x1AF31);
  rtl_set_rfreg(hw, RF90_PATH_A, RF_IPA, MASKDWORD, 0x8F425);
  rtl_set_rfreg(hw, RF90_PATH_A, RF_SYN_G2, MASKDWORD, 0x4F200);
  rtl_set_rfreg(hw, RF90_PATH_A, RF_RCK1, MASKDWORD, 0x44053);
  rtl_set_rfreg(hw, RF90_PATH_A, RF_RCK2, MASKDWORD, 0x80201);
 }
 rtlphy->rfreg_chnlval[0] = rtl_get_rfreg(hw, (enum radio_path)0,
       RF_CHNLBW, RFREG_OFFSET_MASK);
 rtlphy->rfreg_chnlval[1] = rtl_get_rfreg(hw, (enum radio_path)1,
       RF_CHNLBW, RFREG_OFFSET_MASK);
 rtl_set_bbreg(hw, RFPGA0_RFMOD, BCCKEN, 0x1);
 rtl_set_bbreg(hw, RFPGA0_RFMOD, BOFDMEN, 0x1);
 rtl_set_bbreg(hw, RFPGA0_ANALOGPARAMETER2, BIT(10), 1);
 _rtl8723e_hw_configure(hw);
 rtl_cam_reset_all_entry(hw);
 rtl8723e_enable_hw_security_config(hw);

 ppsc->rfpwr_state = ERFON;

 rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_ETHER_ADDR, mac->mac_addr);
 _rtl8723e_enable_aspm_back_door(hw);
 rtlpriv->intf_ops->enable_aspm(hw);

 rtl8723e_bt_hw_init(hw);

 if (ppsc->rfpwr_state == ERFON) {
  rtl8723e_phy_set_rfpath_switch(hw, 1);
  if (rtlphy->iqk_initialized) {
   rtl8723e_phy_iq_calibrate(hw, 1);
  } else {
   rtl8723e_phy_iq_calibrate(hw, 0);
   rtlphy->iqk_initialized = 1;
  }

  rtl8723e_dm_check_txpower_tracking(hw);
  rtl8723e_phy_lc_calibrate(hw);
 }

 tmp_u1b = efuse_read_1byte(hw, 0x1FA);
 if (!(tmp_u1b & BIT(0))) {
  rtl_set_rfreg(hw, RF90_PATH_A, 0x15, 0x0F, 0x05);
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE, "PA BIAS path A\n");
 }

 if (!(tmp_u1b & BIT(4))) {
  tmp_u1b = rtl_read_byte(rtlpriv, 0x16);
  tmp_u1b &= 0x0F;
  rtl_write_byte(rtlpriv, 0x16, tmp_u1b | 0x80);
  udelay(10);
  rtl_write_byte(rtlpriv, 0x16, tmp_u1b | 0x90);
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE, "under 1.5V\n");
 }
 rtl8723e_dm_init(hw);
exit:
 local_irq_restore(flags);
 rtlpriv->rtlhal.being_init_adapter = 0;
 return err;
}
