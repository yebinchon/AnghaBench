
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int * pfirmware; int version; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_5__ {int dm_initialgain_enable; int disable_framebursting; scalar_t__ thermalvalue; scalar_t__ dm_flag; } ;
struct rtl_priv {int max_fw_size; TYPE_4__ rtlhal; TYPE_3__ io; TYPE_2__* cfg; TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {char* alt_fw_name; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_81XXC_VENDOR_UMC_B_CUT (int ) ;
 int IS_92C_SERIAL (int ) ;
 scalar_t__ IS_VENDOR_UMC_A_CUT (int ) ;
 int THIS_MODULE ;
 int pr_err (char*) ;
 int pr_info (char*,char*) ;
 int request_firmware_nowait (int ,int,char*,int ,int ,struct ieee80211_hw*,int ) ;
 int rtl_fw_cb ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int vfree (int *) ;
 int * vzalloc (int) ;

__attribute__((used)) static int rtl92cu_init_sw_vars(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 int err;
 char *fw_name;

 rtlpriv->dm.dm_initialgain_enable = 1;
 rtlpriv->dm.dm_flag = 0;
 rtlpriv->dm.disable_framebursting = 0;
 rtlpriv->dm.thermalvalue = 0;


 rtlpriv->rtlhal.pfirmware = vzalloc(0x4000);
 if (!rtlpriv->rtlhal.pfirmware) {
  pr_err("Can't alloc buffer for fw\n");
  return 1;
 }
 if (IS_VENDOR_UMC_A_CUT(rtlpriv->rtlhal.version) &&
     !IS_92C_SERIAL(rtlpriv->rtlhal.version)) {
  fw_name = "rtlwifi/rtl8192cufw_A.bin";
 } else if (IS_81XXC_VENDOR_UMC_B_CUT(rtlpriv->rtlhal.version)) {
  fw_name = "rtlwifi/rtl8192cufw_B.bin";
 } else {
  fw_name = "rtlwifi/rtl8192cufw_TMSC.bin";
 }

 rtlpriv->cfg->alt_fw_name = "rtlwifi/rtl8192cufw.bin";
 pr_info("Loading firmware %s\n", fw_name);
 rtlpriv->max_fw_size = 0x4000;
 err = request_firmware_nowait(THIS_MODULE, 1,
          fw_name, rtlpriv->io.dev,
          GFP_KERNEL, hw, rtl_fw_cb);
 if (err) {
  vfree(rtlpriv->rtlhal.pfirmware);
  rtlpriv->rtlhal.pfirmware = ((void*)0);
 }
 return err;
}
