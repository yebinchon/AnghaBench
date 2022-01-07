
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ fwsize; scalar_t__ wowlan_fwsize; int wowlan_firmware; int pfirmware; } ;
struct TYPE_4__ {int dev; } ;
struct rtl_priv {scalar_t__ max_fw_size; TYPE_3__ rtlhal; TYPE_2__* cfg; TYPE_1__ io; int firmware_loading_complete; } ;
struct ieee80211_hw {int dummy; } ;
struct firmware {scalar_t__ size; int data; } ;
struct TYPE_5__ {scalar_t__ alt_fw_name; } ;


 int COMP_ERR ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int complete (int *) ;
 int memcpy (int ,int ,scalar_t__) ;
 int pr_err (char*) ;
 int pr_info (char*,scalar_t__) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,scalar_t__,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl_fw_do_work(const struct firmware *firmware, void *context,
      bool is_wow)
{
 struct ieee80211_hw *hw = context;
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 int err;

 RT_TRACE(rtlpriv, COMP_ERR, DBG_LOUD,
   "Firmware callback routine entered!\n");
 complete(&rtlpriv->firmware_loading_complete);
 if (!firmware) {
  if (rtlpriv->cfg->alt_fw_name) {
   err = request_firmware(&firmware,
            rtlpriv->cfg->alt_fw_name,
            rtlpriv->io.dev);
   pr_info("Loading alternative firmware %s\n",
    rtlpriv->cfg->alt_fw_name);
   if (!err)
    goto found_alt;
  }
  pr_err("Selected firmware is not available\n");
  rtlpriv->max_fw_size = 0;
  return;
 }
found_alt:
 if (firmware->size > rtlpriv->max_fw_size) {
  pr_err("Firmware is too big!\n");
  release_firmware(firmware);
  return;
 }
 if (!is_wow) {
  memcpy(rtlpriv->rtlhal.pfirmware, firmware->data,
         firmware->size);
  rtlpriv->rtlhal.fwsize = firmware->size;
 } else {
  memcpy(rtlpriv->rtlhal.wowlan_firmware, firmware->data,
         firmware->size);
  rtlpriv->rtlhal.wowlan_fwsize = firmware->size;
 }
 release_firmware(firmware);
}
