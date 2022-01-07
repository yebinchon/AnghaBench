
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int antenna_tx; } ;
struct _adapter {TYPE_1__ mppriv; } ;




 int RF_AC ;
 scalar_t__ RF_PATH_A ;
 scalar_t__ RF_PATH_B ;
 int RF_TX_G2 ;
 int bCCKEn ;
 int bDisable ;
 int bEnable ;
 int bOFDMEn ;
 int bRFRegOffsetMask ;
 int msleep (int) ;
 int rFPGA0_RFMOD ;
 int set_bb_reg (struct _adapter*,int ,int ,int ) ;
 int set_rf_reg (struct _adapter*,scalar_t__,int ,int ,int) ;

void r8712_SetSingleToneTx(struct _adapter *pAdapter, u8 bStart)
{
 u8 rfPath;

 switch (pAdapter->mppriv.antenna_tx) {
 case 128:
  rfPath = RF_PATH_B;
  break;
 case 129:
 default:
  rfPath = RF_PATH_A;
  break;
 }
 if (bStart) {
  set_bb_reg(pAdapter, rFPGA0_RFMOD, bCCKEn, bDisable);
  set_bb_reg(pAdapter, rFPGA0_RFMOD, bOFDMEn, bDisable);
  set_rf_reg(pAdapter, rfPath, RF_TX_G2, bRFRegOffsetMask,
      0xd4000);
  msleep(100);

  set_rf_reg(pAdapter, rfPath, RF_AC, bRFRegOffsetMask, 0x2001f);
  msleep(100);
 } else {
  set_bb_reg(pAdapter, rFPGA0_RFMOD, bCCKEn, bEnable);
  set_bb_reg(pAdapter, rFPGA0_RFMOD, bOFDMEn, bEnable);
  set_rf_reg(pAdapter, rfPath, RF_TX_G2, bRFRegOffsetMask,
      0x54000);
  msleep(100);

  set_rf_reg(pAdapter, rfPath, RF_AC, bRFRegOffsetMask, 0x30000);
  msleep(100);
 }
}
