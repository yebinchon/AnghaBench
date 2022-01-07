
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct rtl_ps_ctl {int fw_current_inpsmode; scalar_t__ rfpwr_state; } ;
struct TYPE_12__ {int being_init_adapter; } ;
struct TYPE_10__ {scalar_t__ rx_idle_ant; } ;
struct TYPE_11__ {TYPE_4__ fat_table; } ;
struct rtl_phy {int* rfreg_chnlval; int iqk_initialized; int rf_mode; } ;
struct rtl_priv {TYPE_6__ rtlhal; TYPE_5__ dm; TYPE_3__* intf_ops; TYPE_2__* cfg; struct rtl_phy phy; } ;
struct rtl_pci {int receive_config; } ;
struct rtl_mac {int mac_addr; } ;
struct rtl_hal {int fw_ready; int mac_func_enable; int fw_clk_change_in_progress; int allow_sw_to_change_hwclc; scalar_t__ oem_id; void* fw_ps_state; scalar_t__ last_hmeboxnum; } ;
struct rtl_efuse {scalar_t__ antenna_div_type; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;
struct TYPE_9__ {int (* enable_aspm ) (struct ieee80211_hw*) ;int (* disable_aspm ) (struct ieee80211_hw*) ;} ;
struct TYPE_8__ {TYPE_1__* ops; } ;
struct TYPE_7__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,int ) ;} ;


 scalar_t__ AUX_ANT ;
 int BCCKEN ;
 int BIT (int) ;
 int BOFDMEN ;
 scalar_t__ CGCS_RX_HW_ANTDIV ;
 scalar_t__ CG_TRX_HW_ANTDIV ;
 int COMP_ERR ;
 int COMP_INIT ;
 int DBG_LOUD ;
 int DBG_WARNING ;
 scalar_t__ ERFON ;
 void* FW_PS_STATE_ALL_ON_88E ;
 int HW_VAR_ETHER_ADDR ;
 scalar_t__ MAIN_ANT ;
 int RCR_ACRC32 ;
 int RCR_AICV ;
 int REG_CR ;
 int REG_NAV_CTRL ;
 int REG_RCR ;
 int REG_SYS_CLKR ;
 int RF90_PATH_A ;
 int RFPGA0_RFMOD ;
 int RFREG_OFFSET_MASK ;
 int RF_CHNLBW ;
 int RF_OP_BY_SW_3WIRE ;
 scalar_t__ RT_CID_819X_HP ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int _rtl88ee_enable_aspm_back_door (struct ieee80211_hw*) ;
 int _rtl88ee_hw_configure (struct ieee80211_hw*) ;
 int _rtl88ee_init_mac (struct ieee80211_hw*) ;
 int efuse_read_1byte (struct ieee80211_hw*,int) ;
 int local_irq_enable () ;
 int local_irq_restore (unsigned long) ;
 int local_save_flags (unsigned long) ;
 int pr_info (char*) ;
 int rtl88e_dm_check_txpower_tracking (struct ieee80211_hw*) ;
 int rtl88e_dm_init (struct ieee80211_hw*) ;
 int rtl88e_download_fw (struct ieee80211_hw*,int) ;
 int rtl88e_phy_bb_config (struct ieee80211_hw*) ;
 int rtl88e_phy_iq_calibrate (struct ieee80211_hw*,int) ;
 int rtl88e_phy_lc_calibrate (struct ieee80211_hw*) ;
 int rtl88e_phy_mac_config (struct ieee80211_hw*) ;
 int rtl88e_phy_rf_config (struct ieee80211_hw*) ;
 int rtl88e_phy_set_rfpath_switch (struct ieee80211_hw*,int) ;
 int rtl88ee_enable_hw_security_config (struct ieee80211_hw*) ;
 int rtl_cam_reset_all_entry (struct ieee80211_hw*) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 int rtl_get_rfreg (struct ieee80211_hw*,int,int ,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int rtl_read_byte (struct rtl_priv*,int) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int ,int) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int ,int,int,int) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;
 int stub1 (struct ieee80211_hw*) ;
 int stub2 (struct ieee80211_hw*,int ,int ) ;
 int stub3 (struct ieee80211_hw*) ;
 int udelay (int) ;

int rtl88ee_hw_init(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 bool rtstatus;
 int err = 0;
 u8 tmp_u1b, u1byte;
 unsigned long flags;

 rtlpriv->rtlhal.being_init_adapter = 1;







 local_save_flags(flags);
 local_irq_enable();
 rtlhal->fw_ready = 0;

 rtlpriv->intf_ops->disable_aspm(hw);

 tmp_u1b = rtl_read_byte(rtlpriv, REG_SYS_CLKR+1);
 u1byte = rtl_read_byte(rtlpriv, REG_CR);
 if ((tmp_u1b & BIT(3)) && (u1byte != 0 && u1byte != 0xEA)) {
  rtlhal->mac_func_enable = 1;
 } else {
  rtlhal->mac_func_enable = 0;
  rtlhal->fw_ps_state = FW_PS_STATE_ALL_ON_88E;
 }

 rtstatus = _rtl88ee_init_mac(hw);
 if (rtstatus != 1) {
  pr_info("Init MAC failed\n");
  err = 1;
  goto exit;
 }

 err = rtl88e_download_fw(hw, 0);
 if (err) {
  RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
    "Failed to download FW. Init HW without FW now..\n");
  err = 1;
  goto exit;
 }
 rtlhal->fw_ready = 1;

 rtlhal->last_hmeboxnum = 0;
 rtlhal->fw_ps_state = FW_PS_STATE_ALL_ON_88E;
 rtlhal->fw_clk_change_in_progress = 0;
 rtlhal->allow_sw_to_change_hwclc = 0;
 ppsc->fw_current_inpsmode = 0;

 rtl88e_phy_mac_config(hw);





 rtlpci->receive_config &= ~(RCR_ACRC32 | RCR_AICV);
 rtl_write_dword(rtlpriv, REG_RCR, rtlpci->receive_config);

 rtl88e_phy_bb_config(hw);
 rtl_set_bbreg(hw, RFPGA0_RFMOD, BCCKEN, 0x1);
 rtl_set_bbreg(hw, RFPGA0_RFMOD, BOFDMEN, 0x1);

 rtlphy->rf_mode = RF_OP_BY_SW_3WIRE;
 rtl88e_phy_rf_config(hw);

 rtlphy->rfreg_chnlval[0] = rtl_get_rfreg(hw, (enum radio_path)0,
       RF_CHNLBW, RFREG_OFFSET_MASK);
 rtlphy->rfreg_chnlval[0] = rtlphy->rfreg_chnlval[0] & 0xfff00fff;

 _rtl88ee_hw_configure(hw);
 rtl_cam_reset_all_entry(hw);
 rtl88ee_enable_hw_security_config(hw);

 rtlhal->mac_func_enable = 1;
 ppsc->rfpwr_state = ERFON;

 rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_ETHER_ADDR, mac->mac_addr);
 _rtl88ee_enable_aspm_back_door(hw);
 rtlpriv->intf_ops->enable_aspm(hw);

 if (ppsc->rfpwr_state == ERFON) {
  if ((rtlefuse->antenna_div_type == CGCS_RX_HW_ANTDIV) ||
      ((rtlefuse->antenna_div_type == CG_TRX_HW_ANTDIV) &&
       (rtlhal->oem_id == RT_CID_819X_HP))) {
   rtl88e_phy_set_rfpath_switch(hw, 1);
   rtlpriv->dm.fat_table.rx_idle_ant = MAIN_ANT;
  } else {
   rtl88e_phy_set_rfpath_switch(hw, 0);
   rtlpriv->dm.fat_table.rx_idle_ant = AUX_ANT;
  }
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "rx idle ant %s\n",
    (rtlpriv->dm.fat_table.rx_idle_ant == MAIN_ANT) ?
    ("MAIN_ANT") : ("AUX_ANT"));

  if (rtlphy->iqk_initialized) {
   rtl88e_phy_iq_calibrate(hw, 1);
  } else {
   rtl88e_phy_iq_calibrate(hw, 0);
   rtlphy->iqk_initialized = 1;
  }

  rtl88e_dm_check_txpower_tracking(hw);
  rtl88e_phy_lc_calibrate(hw);
 }

 tmp_u1b = efuse_read_1byte(hw, 0x1FA);
 if (!(tmp_u1b & BIT(0))) {
  rtl_set_rfreg(hw, RF90_PATH_A, 0x15, 0x0F, 0x05);
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "PA BIAS path A\n");
 }

 if (!(tmp_u1b & BIT(4))) {
  tmp_u1b = rtl_read_byte(rtlpriv, 0x16);
  tmp_u1b &= 0x0F;
  rtl_write_byte(rtlpriv, 0x16, tmp_u1b | 0x80);
  udelay(10);
  rtl_write_byte(rtlpriv, 0x16, tmp_u1b | 0x90);
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "under 1.5V\n");
 }
 rtl_write_byte(rtlpriv, REG_NAV_CTRL+2, ((30000+127)/128));
 rtl88e_dm_init(hw);
exit:
 local_irq_restore(flags);
 rtlpriv->rtlhal.being_init_adapter = 0;
 return err;
}
