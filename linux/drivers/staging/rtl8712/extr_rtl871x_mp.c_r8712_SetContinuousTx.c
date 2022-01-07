
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ curr_rateidx; } ;
struct _adapter {TYPE_1__ mppriv; } ;


 scalar_t__ MPT_RATE_11M ;
 scalar_t__ MPT_RATE_6M ;
 scalar_t__ MPT_RATE_MCS15 ;
 int SetCCKContinuousTx (struct _adapter*,scalar_t__) ;
 int SetOFDMContinuousTx (struct _adapter*,scalar_t__) ;
 int msleep (int) ;
 int r8712_bb_reg_read (struct _adapter*,int ) ;
 int r8712_bb_reg_write (struct _adapter*,int ,int) ;
 int rRx_Wait_CCCA ;

void r8712_SetContinuousTx(struct _adapter *pAdapter, u8 bStart)
{

 if (bStart) {
  r8712_bb_reg_write(pAdapter, rRx_Wait_CCCA,
       r8712_bb_reg_read(pAdapter,
       rRx_Wait_CCCA) & 0xFE1FFFFF);
  msleep(100);
 }
 if (pAdapter->mppriv.curr_rateidx <= MPT_RATE_11M)
  SetCCKContinuousTx(pAdapter, bStart);
 else if ((pAdapter->mppriv.curr_rateidx >= MPT_RATE_6M) &&
   (pAdapter->mppriv.curr_rateidx <= MPT_RATE_MCS15))
  SetOFDMContinuousTx(pAdapter, bStart);

 if (!bStart)
  r8712_bb_reg_write(pAdapter, rRx_Wait_CCCA,
       r8712_bb_reg_read(pAdapter,
       rRx_Wait_CCCA) | 0x01E00000);
}
