
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {scalar_t__ max_fw_size; } ;
struct rtl_hal {scalar_t__ pfirmware; } ;
struct rt_firmware {int* sz_fw_tmpbuffer; int* fw_imem; int fw_imem_len; int* fw_emem; int fw_emem_len; void* fwstatus; struct fw_hdr* pfwheader; int firmwareversion; } ;
struct ieee80211_hw {int dummy; } ;
struct fw_priv {int hci_sel; } ;
struct fw_hdr {int img_imem_size; int img_sram_size; struct fw_priv fwpriv; int dmem_size; int version; int signature; } ;


 int COMP_INIT ;
 int DBG_LOUD ;
 void* FW_STATUS_INIT ;



 int FW_STATUS_READY ;
 int RT_8192S_FIRMWARE_HDR_EXCLUDE_PRI_SIZE ;
 int RT_8192S_FIRMWARE_HDR_SIZE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ,int ,int ,int,int) ;
 int _rtl92s_firmware_checkready (struct ieee80211_hw*,int) ;
 int _rtl92s_firmware_downloadcode (struct ieee80211_hw*,int*,int) ;
 int _rtl92s_firmware_get_nextstatus (void*) ;
 int _rtl92s_firmwareheader_priveupdate (struct ieee80211_hw*,struct fw_priv*) ;
 int byte (int ,int ) ;
 int memcpy (int*,int*,int) ;
 int pr_err (char*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

int rtl92s_download_fw(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rt_firmware *firmware = ((void*)0);
 struct fw_hdr *pfwheader;
 struct fw_priv *pfw_priv = ((void*)0);
 u8 *puc_mappedfile = ((void*)0);
 u32 ul_filelength = 0;
 u8 fwhdr_size = RT_8192S_FIRMWARE_HDR_SIZE;
 u8 fwstatus = FW_STATUS_INIT;
 bool rtstatus = 1;

 if (rtlpriv->max_fw_size == 0 || !rtlhal->pfirmware)
  return 1;

 firmware = (struct rt_firmware *)rtlhal->pfirmware;
 firmware->fwstatus = FW_STATUS_INIT;

 puc_mappedfile = firmware->sz_fw_tmpbuffer;


 firmware->pfwheader = (struct fw_hdr *) puc_mappedfile;
 pfwheader = firmware->pfwheader;
 firmware->firmwareversion = byte(pfwheader->version, 0);
 firmware->pfwheader->fwpriv.hci_sel = 1;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
   "signature:%x, version:%x, size:%x, imemsize:%x, sram size:%x\n",
   pfwheader->signature,
   pfwheader->version, pfwheader->dmem_size,
   pfwheader->img_imem_size, pfwheader->img_sram_size);


 if ((pfwheader->img_imem_size == 0) || (pfwheader->img_imem_size >
     sizeof(firmware->fw_imem))) {
  pr_err("memory for data image is less than IMEM required\n");
  goto fail;
 } else {
  puc_mappedfile += fwhdr_size;

  memcpy(firmware->fw_imem, puc_mappedfile,
         pfwheader->img_imem_size);
  firmware->fw_imem_len = pfwheader->img_imem_size;
 }


 if (pfwheader->img_sram_size > sizeof(firmware->fw_emem)) {
  pr_err("memory for data image is less than EMEM required\n");
  goto fail;
 } else {
  puc_mappedfile += firmware->fw_imem_len;

  memcpy(firmware->fw_emem, puc_mappedfile,
         pfwheader->img_sram_size);
  firmware->fw_emem_len = pfwheader->img_sram_size;
 }


 fwstatus = _rtl92s_firmware_get_nextstatus(firmware->fwstatus);
 while (fwstatus != FW_STATUS_READY) {

  switch (fwstatus) {
  case 128:
   puc_mappedfile = firmware->fw_imem;
   ul_filelength = firmware->fw_imem_len;
   break;
  case 129:
   puc_mappedfile = firmware->fw_emem;
   ul_filelength = firmware->fw_emem_len;
   break;
  case 130:

   pfwheader = firmware->pfwheader;
   pfw_priv = &pfwheader->fwpriv;
   _rtl92s_firmwareheader_priveupdate(hw, pfw_priv);
   puc_mappedfile = (u8 *)(firmware->pfwheader) +
     RT_8192S_FIRMWARE_HDR_EXCLUDE_PRI_SIZE;
   ul_filelength = fwhdr_size -
     RT_8192S_FIRMWARE_HDR_EXCLUDE_PRI_SIZE;
   break;
  default:
   pr_err("Unexpected Download step!!\n");
   goto fail;
  }


  rtstatus = _rtl92s_firmware_downloadcode(hw, puc_mappedfile,
    ul_filelength);

  if (!rtstatus) {
   pr_err("fail!\n");
   goto fail;
  }


  rtstatus = _rtl92s_firmware_checkready(hw, fwstatus);
  if (!rtstatus) {
   pr_err("rtl8192se: firmware fail!\n");
   goto fail;
  }

  fwstatus = _rtl92s_firmware_get_nextstatus(firmware->fwstatus);
 }

 return rtstatus;
fail:
 return 0;
}
