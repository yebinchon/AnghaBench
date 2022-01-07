
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct _adapter {int dummy; } ;


 int bBBResetB ;
 int bCCKBBMode ;
 int bCCKScramble ;
 int bDisable ;
 int bEnable ;
 int bOFDMContinueTx ;
 int bOFDMEn ;
 int bOFDMSingleCarrier ;
 int bOFDMSingleTone ;
 int get_bb_reg (struct _adapter*,int ,int ) ;
 int msleep (int) ;
 int rCCK0_System ;
 int rFPGA0_RFMOD ;
 int rOFDM1_LSTF ;
 int rPMAC_Reset ;
 int set_bb_reg (struct _adapter*,int ,int ,int) ;

void r8712_SetSingleCarrierTx(struct _adapter *pAdapter, u8 bStart)
{
 if (bStart) {

  if (!get_bb_reg(pAdapter, rFPGA0_RFMOD, bOFDMEn))

   set_bb_reg(pAdapter, rFPGA0_RFMOD, bOFDMEn, bEnable);

  set_bb_reg(pAdapter, rCCK0_System, bCCKBBMode, bDisable);

  set_bb_reg(pAdapter, rCCK0_System, bCCKScramble, bEnable);

  set_bb_reg(pAdapter, rOFDM1_LSTF, bOFDMContinueTx, bDisable);
  set_bb_reg(pAdapter, rOFDM1_LSTF, bOFDMSingleCarrier, bEnable);
  set_bb_reg(pAdapter, rOFDM1_LSTF, bOFDMSingleTone, bDisable);
 } else {

  set_bb_reg(pAdapter, rOFDM1_LSTF, bOFDMContinueTx, bDisable);
  set_bb_reg(pAdapter, rOFDM1_LSTF, bOFDMSingleCarrier,
      bDisable);
  set_bb_reg(pAdapter, rOFDM1_LSTF, bOFDMSingleTone, bDisable);
  msleep(20);

  set_bb_reg(pAdapter, rPMAC_Reset, bBBResetB, 0x0);
  set_bb_reg(pAdapter, rPMAC_Reset, bBBResetB, 0x1);
 }
}
