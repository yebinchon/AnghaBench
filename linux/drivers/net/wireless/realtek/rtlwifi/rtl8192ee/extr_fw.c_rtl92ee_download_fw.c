
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rtlwifi_firmware_header {scalar_t__ signature; int version; int subversion; } ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int version; scalar_t__ mac_func_enable; scalar_t__ fwsize; scalar_t__ pfirmware; int fw_subversion; int fw_version; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum version_8192e { ____Placeholder_version_8192e } version_8192e ;


 int BIT (int) ;
 int COMP_FW ;
 int DBG_DMESG ;
 scalar_t__ IS_FW_HEADER_EXIST (struct rtlwifi_firmware_header*) ;
 int REG_MCUFWDL ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,scalar_t__,...) ;
 int _rtl92ee_enable_fw_download (struct ieee80211_hw*,int) ;
 int _rtl92ee_fw_free_to_go (struct ieee80211_hw*) ;
 int _rtl92ee_write_fw (struct ieee80211_hw*,int,int *,scalar_t__) ;
 int le16_to_cpu (int ) ;
 int rtl92ee_firmware_selfreset (struct ieee80211_hw*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int ) ;

int rtl92ee_download_fw(struct ieee80211_hw *hw, bool buse_wake_on_wlan_fw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtlwifi_firmware_header *pfwheader;
 u8 *pfwdata;
 u32 fwsize;
 int err;
 enum version_8192e version = rtlhal->version;

 if (!rtlhal->pfirmware)
  return 1;

 pfwheader = (struct rtlwifi_firmware_header *)rtlhal->pfirmware;
 rtlhal->fw_version = le16_to_cpu(pfwheader->version);
 rtlhal->fw_subversion = pfwheader->subversion;
 pfwdata = (u8 *)rtlhal->pfirmware;
 fwsize = rtlhal->fwsize;
 RT_TRACE(rtlpriv, COMP_FW, DBG_DMESG,
   "normal Firmware SIZE %d\n" , fwsize);

 if (IS_FW_HEADER_EXIST(pfwheader)) {
  RT_TRACE(rtlpriv, COMP_FW, DBG_DMESG,
    "Firmware Version(%d), Signature(%#x),Size(%d)\n",
     pfwheader->version, pfwheader->signature,
     (int)sizeof(struct rtlwifi_firmware_header));

  pfwdata = pfwdata + sizeof(struct rtlwifi_firmware_header);
  fwsize = fwsize - sizeof(struct rtlwifi_firmware_header);
 } else {
  RT_TRACE(rtlpriv, COMP_FW, DBG_DMESG,
    "Firmware no Header, Signature(%#x)\n",
     pfwheader->signature);
 }

 if (rtlhal->mac_func_enable) {
  if (rtl_read_byte(rtlpriv, REG_MCUFWDL) & BIT(7)) {
   rtl_write_byte(rtlpriv, REG_MCUFWDL, 0);
   rtl92ee_firmware_selfreset(hw);
  }
 }
 _rtl92ee_enable_fw_download(hw, 1);
 _rtl92ee_write_fw(hw, version, pfwdata, fwsize);
 _rtl92ee_enable_fw_download(hw, 0);

 err = _rtl92ee_fw_free_to_go(hw);

 return 0;
}
