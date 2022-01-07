
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ curr_rateidx; } ;
struct _adapter {TYPE_1__ mppriv; } ;


 scalar_t__ MPT_RATE_11M ;
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

void r8712_SetCarrierSuppressionTx(struct _adapter *pAdapter, u8 bStart)
{
 if (bStart) {
  if (pAdapter->mppriv.curr_rateidx <= MPT_RATE_11M) {

   if (!get_bb_reg(pAdapter, rFPGA0_RFMOD, bCCKEn)) {

    set_bb_reg(pAdapter, rFPGA0_RFMOD, bCCKEn,
        bEnable);
   }

   set_bb_reg(pAdapter, rOFDM1_LSTF, bOFDMContinueTx,
       bDisable);
   set_bb_reg(pAdapter, rOFDM1_LSTF, bOFDMSingleCarrier,
       bDisable);
   set_bb_reg(pAdapter, rOFDM1_LSTF, bOFDMSingleTone,
       bDisable);

   set_bb_reg(pAdapter, rCCK0_System, bCCKBBMode, 0x2);

   set_bb_reg(pAdapter, rCCK0_System, bCCKScramble,
       bDisable);


   set_bb_reg(pAdapter, rCCK0_System, bCCKTxRate, 0x0);
  }
 } else {
  if (pAdapter->mppriv.curr_rateidx <= MPT_RATE_11M) {

   set_bb_reg(pAdapter, rCCK0_System, bCCKBBMode, 0x0);

   set_bb_reg(pAdapter, rCCK0_System, bCCKScramble,
       bEnable);

   set_bb_reg(pAdapter, rPMAC_Reset, bBBResetB, 0x0);
   set_bb_reg(pAdapter, rPMAC_Reset, bBBResetB, 0x1);
  }
 }
}
