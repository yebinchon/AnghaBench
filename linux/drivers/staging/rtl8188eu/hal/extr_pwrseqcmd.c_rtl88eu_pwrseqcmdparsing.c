
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct wl_pwr_cfg {int dummy; } ;
struct adapter {int dummy; } ;


 int DBG_88E (char*,size_t) ;
 int GET_PWR_CFG_CMD (struct wl_pwr_cfg) ;
 int GET_PWR_CFG_CUT_MASK (struct wl_pwr_cfg) ;
 int GET_PWR_CFG_MASK (struct wl_pwr_cfg) ;
 int GET_PWR_CFG_OFFSET (struct wl_pwr_cfg) ;
 int GET_PWR_CFG_VALUE (struct wl_pwr_cfg) ;
 int PWRSEQ_DELAY_US ;





 int RT_TRACE (int ,int ,char*) ;
 int _drv_err_ ;
 int _drv_info_ ;
 int _module_hal_init_c_ ;
 int udelay (int) ;
 int usb_read8 (struct adapter*,size_t) ;
 int usb_write8 (struct adapter*,size_t,int) ;

u8 rtl88eu_pwrseqcmdparsing(struct adapter *padapter, u8 cut_vers,
       struct wl_pwr_cfg pwrseqcmd[])
{
 struct wl_pwr_cfg pwrcfgcmd;
 u8 poll_bit = 0;
 u32 aryidx = 0;
 u8 value = 0;
 u32 offset = 0;
 u32 poll_count = 0;
 u32 max_poll_count = 5000;

 do {
  pwrcfgcmd = pwrseqcmd[aryidx];

  RT_TRACE(_module_hal_init_c_, _drv_info_,
    ("rtl88eu_pwrseqcmdparsing: offset(%#x) cut_msk(%#x)"
     " cmd(%#x)"
     "msk(%#x) value(%#x)\n",
    GET_PWR_CFG_OFFSET(pwrcfgcmd),
    GET_PWR_CFG_CUT_MASK(pwrcfgcmd),
    GET_PWR_CFG_CMD(pwrcfgcmd),
    GET_PWR_CFG_MASK(pwrcfgcmd),
    GET_PWR_CFG_VALUE(pwrcfgcmd)));


  if (GET_PWR_CFG_CUT_MASK(pwrcfgcmd) & cut_vers) {
   switch (GET_PWR_CFG_CMD(pwrcfgcmd)) {
   case 129:
    RT_TRACE(_module_hal_init_c_, _drv_info_,
      ("rtl88eu_pwrseqcmdparsing: PWR_CMD_READ\n"));
    break;
   case 128:
    RT_TRACE(_module_hal_init_c_, _drv_info_,
      ("rtl88eu_pwrseqcmdparsing: PWR_CMD_WRITE\n"));
    offset = GET_PWR_CFG_OFFSET(pwrcfgcmd);


    value = usb_read8(padapter, offset);

    value &= ~(GET_PWR_CFG_MASK(pwrcfgcmd));
    value |= (GET_PWR_CFG_VALUE(pwrcfgcmd) &
       GET_PWR_CFG_MASK(pwrcfgcmd));


    usb_write8(padapter, offset, value);
    break;
   case 130:
    RT_TRACE(_module_hal_init_c_, _drv_info_,
      ("rtl88eu_pwrseqcmdparsing: PWR_CMD_POLLING\n"));

    poll_bit = 0;
    offset = GET_PWR_CFG_OFFSET(pwrcfgcmd);
    do {
     value = usb_read8(padapter, offset);
     value &= GET_PWR_CFG_MASK(pwrcfgcmd);

     if (value == (GET_PWR_CFG_VALUE(pwrcfgcmd) &
            GET_PWR_CFG_MASK(pwrcfgcmd)))
      poll_bit = 1;
     else
      udelay(10);

     if (poll_count++ > max_poll_count) {
      DBG_88E("Fail to polling Offset[%#x]\n", offset);
      return 0;
     }
    } while (!poll_bit);
    break;
   case 132:
    RT_TRACE(_module_hal_init_c_, _drv_info_,
      ("rtl88eu_pwrseqcmdparsing: PWR_CMD_DELAY\n"));
    if (GET_PWR_CFG_VALUE(pwrcfgcmd) == PWRSEQ_DELAY_US)
     udelay(GET_PWR_CFG_OFFSET(pwrcfgcmd));
    else
     udelay(GET_PWR_CFG_OFFSET(pwrcfgcmd)*1000);
    break;
   case 131:

    RT_TRACE(_module_hal_init_c_, _drv_info_,
      ("rtl88eu_pwrseqcmdparsing: PWR_CMD_END\n"));
    return 1;
   default:
    RT_TRACE(_module_hal_init_c_, _drv_err_,
      ("rtl88eu_pwrseqcmdparsing: Unknown CMD!!\n"));
    break;
   }
  }

  aryidx++;
 } while (1);
 return 1;
}
