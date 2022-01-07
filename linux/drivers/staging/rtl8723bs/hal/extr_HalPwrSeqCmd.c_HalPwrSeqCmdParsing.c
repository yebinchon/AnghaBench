
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct adapter {int dummy; } ;
typedef int WLAN_PWR_CFG ;


 int DBG_871X (char*,size_t,int) ;
 int GET_PWR_CFG_BASE (int ) ;
 int GET_PWR_CFG_CMD (int ) ;
 int GET_PWR_CFG_CUT_MASK (int ) ;
 int GET_PWR_CFG_FAB_MASK (int ) ;
 int GET_PWR_CFG_INTF_MASK (int ) ;
 int GET_PWR_CFG_MASK (int ) ;
 int GET_PWR_CFG_OFFSET (int ) ;
 int GET_PWR_CFG_VALUE (int ) ;
 int PWRSEQ_DELAY_US ;
 int PWR_BASEADDR_SDIO ;





 int RT_TRACE (int ,int ,char*) ;
 int SdioLocalCmd52Read1Byte (struct adapter*,size_t) ;
 int SdioLocalCmd52Write1Byte (struct adapter*,size_t,int) ;
 int _drv_err_ ;
 int _drv_info_ ;
 int _module_hal_init_c_ ;
 int rtw_read8 (struct adapter*,size_t) ;
 int rtw_write8 (struct adapter*,size_t,int) ;
 int udelay (int) ;

u8 HalPwrSeqCmdParsing(
 struct adapter *padapter,
 u8 CutVersion,
 u8 FabVersion,
 u8 InterfaceType,
 WLAN_PWR_CFG PwrSeqCmd[]
)
{
 WLAN_PWR_CFG PwrCfgCmd;
 u8 bPollingBit = 0;
 u32 AryIdx = 0;
 u8 value = 0;
 u32 offset = 0;
 u32 pollingCount = 0;
 u32 maxPollingCnt = 5000;

 do {
  PwrCfgCmd = PwrSeqCmd[AryIdx];

  RT_TRACE(
   _module_hal_init_c_,
   _drv_info_,
   (
    "HalPwrSeqCmdParsing: offset(%#x) cut_msk(%#x) fab_msk(%#x) interface_msk(%#x) base(%#x) cmd(%#x) msk(%#x) value(%#x)\n",
    GET_PWR_CFG_OFFSET(PwrCfgCmd),
    GET_PWR_CFG_CUT_MASK(PwrCfgCmd),
    GET_PWR_CFG_FAB_MASK(PwrCfgCmd),
    GET_PWR_CFG_INTF_MASK(PwrCfgCmd),
    GET_PWR_CFG_BASE(PwrCfgCmd),
    GET_PWR_CFG_CMD(PwrCfgCmd),
    GET_PWR_CFG_MASK(PwrCfgCmd),
    GET_PWR_CFG_VALUE(PwrCfgCmd)
   )
  );


  if (
   (GET_PWR_CFG_FAB_MASK(PwrCfgCmd) & FabVersion) &&
   (GET_PWR_CFG_CUT_MASK(PwrCfgCmd) & CutVersion) &&
   (GET_PWR_CFG_INTF_MASK(PwrCfgCmd) & InterfaceType)
  ) {
   switch (GET_PWR_CFG_CMD(PwrCfgCmd)) {
   case 129:
    RT_TRACE(
     _module_hal_init_c_,
     _drv_info_,
     ("HalPwrSeqCmdParsing: PWR_CMD_READ\n")
    );
    break;

   case 128:
    RT_TRACE(
     _module_hal_init_c_,
     _drv_info_,
     ("HalPwrSeqCmdParsing: PWR_CMD_WRITE\n")
    );
    offset = GET_PWR_CFG_OFFSET(PwrCfgCmd);





    if (GET_PWR_CFG_BASE(PwrCfgCmd) == PWR_BASEADDR_SDIO) {

     value = SdioLocalCmd52Read1Byte(padapter, offset);

     value &= ~(GET_PWR_CFG_MASK(PwrCfgCmd));
     value |= (
      GET_PWR_CFG_VALUE(PwrCfgCmd) &
      GET_PWR_CFG_MASK(PwrCfgCmd)
     );


     SdioLocalCmd52Write1Byte(padapter, offset, value);
    } else {

     value = rtw_read8(padapter, offset);

     value &= (~(GET_PWR_CFG_MASK(PwrCfgCmd)));
     value |= (
      GET_PWR_CFG_VALUE(PwrCfgCmd)
      &GET_PWR_CFG_MASK(PwrCfgCmd)
     );


     rtw_write8(padapter, offset, value);
    }
    break;

   case 130:
    RT_TRACE(
     _module_hal_init_c_,
     _drv_info_,
     ("HalPwrSeqCmdParsing: PWR_CMD_POLLING\n")
    );

    bPollingBit = 0;
    offset = GET_PWR_CFG_OFFSET(PwrCfgCmd);
    do {
     if (GET_PWR_CFG_BASE(PwrCfgCmd) == PWR_BASEADDR_SDIO)
      value = SdioLocalCmd52Read1Byte(padapter, offset);
     else
      value = rtw_read8(padapter, offset);

     value = value&GET_PWR_CFG_MASK(PwrCfgCmd);
     if (
      value == (GET_PWR_CFG_VALUE(PwrCfgCmd) &
      GET_PWR_CFG_MASK(PwrCfgCmd))
     )
      bPollingBit = 1;
     else
      udelay(10);

     if (pollingCount++ > maxPollingCnt) {
      DBG_871X(
       "Fail to polling Offset[%#x]=%02x\n",
       offset,
       value
      );
      return 0;
     }
    } while (!bPollingBit);

    break;

   case 132:
    RT_TRACE(
     _module_hal_init_c_,
     _drv_info_,
     ("HalPwrSeqCmdParsing: PWR_CMD_DELAY\n")
    );
    if (GET_PWR_CFG_VALUE(PwrCfgCmd) == PWRSEQ_DELAY_US)
     udelay(GET_PWR_CFG_OFFSET(PwrCfgCmd));
    else
     udelay(GET_PWR_CFG_OFFSET(PwrCfgCmd)*1000);
    break;

   case 131:

    RT_TRACE(
     _module_hal_init_c_,
     _drv_info_,
     ("HalPwrSeqCmdParsing: PWR_CMD_END\n")
    );
    return 1;

   default:
    RT_TRACE(
     _module_hal_init_c_,
     _drv_err_,
     ("HalPwrSeqCmdParsing: Unknown CMD!!\n")
    );
    break;
   }
  }

  AryIdx++;
 } while (1);

 return 1;
}
