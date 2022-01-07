
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtl_usb_priv {int dummy; } ;
struct rtl_usb {int out_ep_nums; int out_queue_sel; } ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_bw_mode ) (struct ieee80211_hw*,int ) ;} ;


 int EINVAL ;
 int IS_92C_SERIAL (int ) ;
 scalar_t__ IS_NORMAL_CHIP (int ) ;
 int NL80211_CHAN_HT20 ;
 int RTL92C_DRIVER_INFO_SIZE ;
 int TX_PAGE_BOUNDARY ;
 int WMM_CHIP_A_TX_PAGE_BOUNDARY ;
 int WMM_CHIP_B_TX_PAGE_BOUNDARY ;
 int _rtl92c_init_trx_buffer (struct ieee80211_hw*,int) ;
 int _rtl92cu_init_beacon_parameters (struct ieee80211_hw*) ;
 int _rtl92cu_init_power_on (struct ieee80211_hw*) ;
 int _rtl92cu_init_queue_priority (struct ieee80211_hw*,int,int,int) ;
 int _rtl92cu_init_queue_reserved_page (struct ieee80211_hw*,int,int,int) ;
 int _rtl92cu_init_wmac_setting (struct ieee80211_hw*) ;
 int pr_err (char*) ;
 int rtl92c_init_adaptive_ctrl (struct ieee80211_hw*) ;
 int rtl92c_init_ampdu_aggregation (struct ieee80211_hw*) ;
 int rtl92c_init_beacon_max_error (struct ieee80211_hw*) ;
 int rtl92c_init_driver_info_size (struct ieee80211_hw*,int ) ;
 int rtl92c_init_edca (struct ieee80211_hw*) ;
 int rtl92c_init_interrupt (struct ieee80211_hw*) ;
 int rtl92c_init_llt_table (struct ieee80211_hw*,int ) ;
 int rtl92c_init_network_type (struct ieee80211_hw*) ;
 int rtl92c_init_rate_fallback (struct ieee80211_hw*) ;
 int rtl92c_init_retry_function (struct ieee80211_hw*) ;
 int rtl92c_set_min_space (struct ieee80211_hw*,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_usb* rtl_usbdev (struct rtl_usb_priv*) ;
 struct rtl_usb_priv* rtl_usbpriv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int ) ;

__attribute__((used)) static int _rtl92cu_init_mac(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_usb_priv *usb_priv = rtl_usbpriv(hw);
 struct rtl_usb *rtlusb = rtl_usbdev(usb_priv);
 int err = 0;
 u32 boundary = 0;
 u8 wmm_enable = 0;
 u8 out_ep_nums = rtlusb->out_ep_nums;
 u8 queue_sel = rtlusb->out_queue_sel;

 err = _rtl92cu_init_power_on(hw);

 if (err) {
  pr_err("Failed to init power on!\n");
  return err;
 }
 if (!wmm_enable) {
  boundary = TX_PAGE_BOUNDARY;
 } else {
  boundary = (IS_NORMAL_CHIP(rtlhal->version))
     ? WMM_CHIP_B_TX_PAGE_BOUNDARY
     : WMM_CHIP_A_TX_PAGE_BOUNDARY;
 }
 if (0 == rtl92c_init_llt_table(hw, boundary)) {
  pr_err("Failed to init LLT Table!\n");
  return -EINVAL;
 }
 _rtl92cu_init_queue_reserved_page(hw, wmm_enable, out_ep_nums,
       queue_sel);
 _rtl92c_init_trx_buffer(hw, wmm_enable);
 _rtl92cu_init_queue_priority(hw, wmm_enable, out_ep_nums,
         queue_sel);

 rtl92c_init_driver_info_size(hw, RTL92C_DRIVER_INFO_SIZE);
 rtl92c_init_interrupt(hw);
 rtl92c_init_network_type(hw);
 _rtl92cu_init_wmac_setting(hw);
 rtl92c_init_adaptive_ctrl(hw);
 rtl92c_init_edca(hw);
 rtl92c_init_rate_fallback(hw);
 rtl92c_init_retry_function(hw);
 rtlpriv->cfg->ops->set_bw_mode(hw, NL80211_CHAN_HT20);
 rtl92c_set_min_space(hw, IS_92C_SERIAL(rtlhal->version));
 _rtl92cu_init_beacon_parameters(hw);
 rtl92c_init_ampdu_aggregation(hw);
 rtl92c_init_beacon_max_error(hw);
 return err;
}
