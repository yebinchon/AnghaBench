
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct rtlwifi_firmware_header {int signature; int version; int subversion; } ;
struct rtl_priv {scalar_t__ max_fw_size; TYPE_2__* cfg; } ;
struct rtl_hal {int version; scalar_t__ fwsize; int * pfirmware; int fw_subversion; int fw_version; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum version_8723e { ____Placeholder_version_8723e } version_8723e ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {scalar_t__ (* is_fw_header ) (struct rtlwifi_firmware_header*) ;} ;


 int BIT (int) ;
 int COMP_FW ;
 int DBG_LOUD ;
 int REG_MCUFWDL ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ,int ,int) ;
 int le16_to_cpu (int ) ;
 int pr_err (char*) ;
 int rtl8723_enable_fw_download (struct ieee80211_hw*,int) ;
 int rtl8723_fw_free_to_go (struct ieee80211_hw*,int,int) ;
 int rtl8723_write_fw (struct ieee80211_hw*,int,int *,scalar_t__,int) ;
 int rtl8723ae_firmware_selfreset (struct ieee80211_hw*) ;
 int rtl8723be_firmware_selfreset (struct ieee80211_hw*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 scalar_t__ stub1 (struct rtlwifi_firmware_header*) ;

int rtl8723_download_fw(struct ieee80211_hw *hw,
   bool is_8723be, int max_count)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtlwifi_firmware_header *pfwheader;
 u8 *pfwdata;
 u32 fwsize;
 int err;
 enum version_8723e version = rtlhal->version;
 int max_page;

 if (rtlpriv->max_fw_size == 0 || !rtlhal->pfirmware)
  return 1;

 pfwheader = (struct rtlwifi_firmware_header *)rtlhal->pfirmware;
 rtlhal->fw_version = le16_to_cpu(pfwheader->version);
 rtlhal->fw_subversion = pfwheader->subversion;
 pfwdata = rtlhal->pfirmware;
 fwsize = rtlhal->fwsize;

 if (!is_8723be)
  max_page = 6;
 else
  max_page = 8;
 if (rtlpriv->cfg->ops->is_fw_header(pfwheader)) {
  RT_TRACE(rtlpriv, COMP_FW, DBG_LOUD,
    "Firmware Version(%d), Signature(%#x), Size(%d)\n",
    pfwheader->version, pfwheader->signature,
    (int)sizeof(struct rtlwifi_firmware_header));

  pfwdata = pfwdata + sizeof(struct rtlwifi_firmware_header);
  fwsize = fwsize - sizeof(struct rtlwifi_firmware_header);
 }

 if (rtl_read_byte(rtlpriv, REG_MCUFWDL)&BIT(7)) {
  if (is_8723be)
   rtl8723be_firmware_selfreset(hw);
  else
   rtl8723ae_firmware_selfreset(hw);
  rtl_write_byte(rtlpriv, REG_MCUFWDL, 0x00);
 }
 rtl8723_enable_fw_download(hw, 1);
 rtl8723_write_fw(hw, version, pfwdata, fwsize, max_page);
 rtl8723_enable_fw_download(hw, 0);

 err = rtl8723_fw_free_to_go(hw, is_8723be, max_count);
 if (err)
  pr_err("Firmware is not ready to run!\n");
 return 0;
}
