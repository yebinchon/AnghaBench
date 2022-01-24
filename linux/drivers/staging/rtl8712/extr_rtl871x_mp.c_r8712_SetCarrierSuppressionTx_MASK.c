#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ curr_rateidx; } ;
struct _adapter {TYPE_1__ mppriv; } ;

/* Variables and functions */
 scalar_t__ MPT_RATE_11M ; 
 int /*<<< orphan*/  bBBResetB ; 
 int /*<<< orphan*/  bCCKBBMode ; 
 int /*<<< orphan*/  bCCKEn ; 
 int /*<<< orphan*/  bCCKScramble ; 
 int /*<<< orphan*/  bCCKTxRate ; 
 int bDisable ; 
 int bEnable ; 
 int /*<<< orphan*/  bOFDMContinueTx ; 
 int /*<<< orphan*/  bOFDMSingleCarrier ; 
 int /*<<< orphan*/  bOFDMSingleTone ; 
 int /*<<< orphan*/  FUNC0 (struct _adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rCCK0_System ; 
 int /*<<< orphan*/  rFPGA0_RFMOD ; 
 int /*<<< orphan*/  rOFDM1_LSTF ; 
 int /*<<< orphan*/  rPMAC_Reset ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct _adapter *pAdapter, u8 bStart)
{
	if (bStart) { /* Start Carrier Suppression.*/
		if (pAdapter->mppriv.curr_rateidx <= MPT_RATE_11M) {
			/* 1. if CCK block on? */
			if (!FUNC0(pAdapter, rFPGA0_RFMOD, bCCKEn)) {
				/*set CCK block on*/
				FUNC1(pAdapter, rFPGA0_RFMOD, bCCKEn,
					   bEnable);
			}
			/* Turn Off All Test Mode */
			FUNC1(pAdapter, rOFDM1_LSTF, bOFDMContinueTx,
				   bDisable);
			FUNC1(pAdapter, rOFDM1_LSTF, bOFDMSingleCarrier,
				   bDisable);
			FUNC1(pAdapter, rOFDM1_LSTF, bOFDMSingleTone,
				   bDisable);
			/*transmit mode*/
			FUNC1(pAdapter, rCCK0_System, bCCKBBMode, 0x2);
			/*turn off scramble setting*/
			FUNC1(pAdapter, rCCK0_System, bCCKScramble,
				   bDisable);
			/*Set CCK Tx Test Rate*/
			/*Set FTxRate to 1Mbps*/
			FUNC1(pAdapter, rCCK0_System, bCCKTxRate, 0x0);
		}
	} else { /* Stop Carrier Suppression. */
		if (pAdapter->mppriv.curr_rateidx <= MPT_RATE_11M) {
			/*normal mode*/
			FUNC1(pAdapter, rCCK0_System, bCCKBBMode, 0x0);
			/*turn on scramble setting*/
			FUNC1(pAdapter, rCCK0_System, bCCKScramble,
				   bEnable);
			/*BB Reset*/
			FUNC1(pAdapter, rPMAC_Reset, bBBResetB, 0x0);
			FUNC1(pAdapter, rPMAC_Reset, bBBResetB, 0x1);
		}
	}
}