
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_2__ {int curr_rateidx; } ;
struct _adapter {TYPE_1__ mppriv; } ;


 int bBBResetB ;
 int bCCKBBMode ;
 int bCCKEn ;
 int bCCKScramble ;
 int bCCKTxRate ;
 int bDisable ;
 int bEnable ;
 int bOFDMContinueTx ;
 int bOFDMSingleCarrier ;
 int bOFDMSingleTone ;
 int get_bb_reg (struct _adapter*,int ,int ) ;
 int rCCK0_System ;
 int rFPGA0_RFMOD ;
 int rOFDM1_LSTF ;
 int rPMAC_Reset ;
 int set_bb_reg (struct _adapter*,int ,int ,int) ;

__attribute__((used)) static void SetCCKContinuousTx(struct _adapter *pAdapter, u8 bStart)
{
 u32 cckrate;

 if (bStart) {

  if (!get_bb_reg(pAdapter, rFPGA0_RFMOD, bCCKEn)) {

   set_bb_reg(pAdapter, rFPGA0_RFMOD, bCCKEn, bEnable);
  }

  set_bb_reg(pAdapter, rOFDM1_LSTF, bOFDMContinueTx, bDisable);
  set_bb_reg(pAdapter, rOFDM1_LSTF, bOFDMSingleCarrier, bDisable);
  set_bb_reg(pAdapter, rOFDM1_LSTF, bOFDMSingleTone, bDisable);

  cckrate = pAdapter->mppriv.curr_rateidx;
  set_bb_reg(pAdapter, rCCK0_System, bCCKTxRate, cckrate);

  set_bb_reg(pAdapter, rCCK0_System, bCCKBBMode, 0x2);

  set_bb_reg(pAdapter, rCCK0_System, bCCKScramble, bEnable);
 } else {

  set_bb_reg(pAdapter, rCCK0_System, bCCKBBMode, 0x0);

  set_bb_reg(pAdapter, rCCK0_System, bCCKScramble, bEnable);

  set_bb_reg(pAdapter, rPMAC_Reset, bBBResetB, 0x0);
  set_bb_reg(pAdapter, rPMAC_Reset, bBBResetB, 0x1);
 }
}
