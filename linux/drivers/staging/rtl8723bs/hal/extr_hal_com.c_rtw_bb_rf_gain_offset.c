
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int EEPROMRFGainOffset; int EEPROMRFGainVal; } ;
struct adapter {TYPE_1__ eeprompriv; } ;


 int ARRAY_SIZE (int*) ;
 int* Array_kfreemap ;
 int BIT15 ;
 int BIT16 ;
 int BIT17 ;
 int BIT18 ;
 int BIT4 ;
 int DBG_871X (char*,...) ;
 int PHY_SetRFReg (struct adapter*,int ,int ,int,int) ;
 int REG_RF_BB_GAIN_OFFSET ;
 int RF_PATH_A ;
 int rtw_hal_read_rfreg (struct adapter*,int ,int,int) ;

void rtw_bb_rf_gain_offset(struct adapter *padapter)
{
 u8 value = padapter->eeprompriv.EEPROMRFGainOffset;
 u32 res, i = 0;
 u32 *Array = Array_kfreemap;
 u32 v1 = 0, v2 = 0, target = 0;


 if (value & BIT4) {
  DBG_871X("Offset RF Gain.\n");
  DBG_871X("Offset RF Gain.  padapter->eeprompriv.EEPROMRFGainVal = 0x%x\n", padapter->eeprompriv.EEPROMRFGainVal);
  if (padapter->eeprompriv.EEPROMRFGainVal != 0xff) {
   res = rtw_hal_read_rfreg(padapter, RF_PATH_A, 0x7f, 0xffffffff);
   res &= 0xfff87fff;
   DBG_871X("Offset RF Gain. before reg 0x7f = 0x%08x\n", res);

   for (i = 0; i < ARRAY_SIZE(Array_kfreemap); i += 2) {
    v1 = Array[i];
    v2 = Array[i+1];
    if (v1 == padapter->eeprompriv.EEPROMRFGainVal) {
     DBG_871X("Offset RF Gain. got v1 = 0x%x , v2 = 0x%x\n", v1, v2);
     target = v2;
     break;
    }
   }
   DBG_871X("padapter->eeprompriv.EEPROMRFGainVal = 0x%x , Gain offset Target Value = 0x%x\n", padapter->eeprompriv.EEPROMRFGainVal, target);
   PHY_SetRFReg(padapter, RF_PATH_A, REG_RF_BB_GAIN_OFFSET, BIT18|BIT17|BIT16|BIT15, target);



   res = rtw_hal_read_rfreg(padapter, RF_PATH_A, 0x7f, 0xffffffff);
   DBG_871X("Offset RF Gain. After reg 0x7f = 0x%08x\n", res);
  } else
   DBG_871X("Offset RF Gain.  padapter->eeprompriv.EEPROMRFGainVal = 0x%x	!= 0xff, didn't run Kfree\n", padapter->eeprompriv.EEPROMRFGainVal);
 } else
  DBG_871X("Using the default RF gain.\n");
}
