
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ pfirmware; } ;
struct rt_firmware {int fwstatus; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum fw_status { ____Placeholder_fw_status } fw_status ;


 int COMP_INIT ;
 int DBG_LOUD ;
 int DMEM_CODE_DONE ;
 int EMEM_CHK_RPT ;
 int EMEM_CODE_DONE ;
 int FWRDY ;



 int IMEM_CHK_RPT ;
 int IMEM_CODE_DONE ;
 int LBKMD_SEL ;
 int LBK_NORMAL ;
 int LOAD_FW_READY ;
 int RCR ;
 int RCR_APPFCS ;
 int RCR_APP_ICV ;
 int RCR_APP_MIC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,...) ;
 int TCR ;
 int TCR_ICV ;
 int _rtl92s_firmware_enable_cpu (struct ieee80211_hw*) ;
 int pr_err (char*,...) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int ) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static bool _rtl92s_firmware_checkready(struct ieee80211_hw *hw,
  u8 loadfw_status)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rt_firmware *firmware = (struct rt_firmware *)rtlhal->pfirmware;
 u32 tmpu4b;
 u8 cpustatus = 0;
 short pollingcnt = 1000;
 bool rtstatus = 1;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
   "LoadStaus(%d)\n", loadfw_status);

 firmware->fwstatus = (enum fw_status)loadfw_status;

 switch (loadfw_status) {
 case 128:

  do {
   cpustatus = rtl_read_byte(rtlpriv, TCR);
   if (cpustatus & IMEM_CODE_DONE)
    break;
   udelay(5);
  } while (pollingcnt--);

  if (!(cpustatus & IMEM_CHK_RPT) || (pollingcnt <= 0)) {
   pr_err("FW_STATUS_LOAD_IMEM FAIL CPU, Status=%x\n",
          cpustatus);
   goto status_check_fail;
  }
  break;

 case 129:


  do {
   cpustatus = rtl_read_byte(rtlpriv, TCR);
   if (cpustatus & EMEM_CODE_DONE)
    break;
   udelay(5);
  } while (pollingcnt--);

  if (!(cpustatus & EMEM_CHK_RPT) || (pollingcnt <= 0)) {
   pr_err("FW_STATUS_LOAD_EMEM FAIL CPU, Status=%x\n",
          cpustatus);
   goto status_check_fail;
  }


  rtstatus = _rtl92s_firmware_enable_cpu(hw);
  if (!rtstatus) {
   pr_err("Enable CPU fail!\n");
   goto status_check_fail;
  }
  break;

 case 130:

  do {
   cpustatus = rtl_read_byte(rtlpriv, TCR);
   if (cpustatus & DMEM_CODE_DONE)
    break;
   udelay(5);
  } while (pollingcnt--);

  if (!(cpustatus & DMEM_CODE_DONE) || (pollingcnt <= 0)) {
   pr_err("Polling DMEM code done fail ! cpustatus(%#x)\n",
          cpustatus);
   goto status_check_fail;
  }

  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "DMEM code download success, cpustatus(%#x)\n",
    cpustatus);



  pollingcnt = 2000;
  do {
   cpustatus = rtl_read_byte(rtlpriv, TCR);
   if (cpustatus & FWRDY)
    break;
   udelay(40);
  } while (pollingcnt--);

  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Polling Load Firmware ready, cpustatus(%x)\n",
    cpustatus);

  if (((cpustatus & LOAD_FW_READY) != LOAD_FW_READY) ||
      (pollingcnt <= 0)) {
   pr_err("Polling Load Firmware ready fail ! cpustatus(%x)\n",
          cpustatus);
   goto status_check_fail;
  }



  tmpu4b = rtl_read_dword(rtlpriv, TCR);
  rtl_write_dword(rtlpriv, TCR, (tmpu4b & (~TCR_ICV)));

  tmpu4b = rtl_read_dword(rtlpriv, RCR);
  rtl_write_dword(rtlpriv, RCR, (tmpu4b | RCR_APPFCS |
    RCR_APP_ICV | RCR_APP_MIC));

  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Current RCR settings(%#x)\n", tmpu4b);


  rtl_write_byte(rtlpriv, LBKMD_SEL, LBK_NORMAL);
  break;

 default:
  pr_err("Unknown status check!\n");
  rtstatus = 0;
  break;
 }

status_check_fail:
 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
   "loadfw_status(%d), rtstatus(%x)\n",
   loadfw_status, rtstatus);
 return rtstatus;
}
