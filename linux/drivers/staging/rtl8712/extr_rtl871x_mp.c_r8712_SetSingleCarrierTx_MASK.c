#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  bBBResetB ; 
 int /*<<< orphan*/  bCCKBBMode ; 
 int /*<<< orphan*/  bCCKScramble ; 
 int bDisable ; 
 int bEnable ; 
 int /*<<< orphan*/  bOFDMContinueTx ; 
 int /*<<< orphan*/  bOFDMEn ; 
 int /*<<< orphan*/  bOFDMSingleCarrier ; 
 int /*<<< orphan*/  bOFDMSingleTone ; 
 int /*<<< orphan*/  FUNC0 (struct _adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  rCCK0_System ; 
 int /*<<< orphan*/  rFPGA0_RFMOD ; 
 int /*<<< orphan*/  rOFDM1_LSTF ; 
 int /*<<< orphan*/  rPMAC_Reset ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct _adapter *pAdapter, u8 bStart)
{
	if (bStart) { /* Start Single Carrier. */
		/* 1. if OFDM block on? */
		if (!FUNC0(pAdapter, rFPGA0_RFMOD, bOFDMEn))
			/*set OFDM block on*/
			FUNC2(pAdapter, rFPGA0_RFMOD, bOFDMEn, bEnable);
		/* 2. set CCK test mode off, set to CCK normal mode */
		FUNC2(pAdapter, rCCK0_System, bCCKBBMode, bDisable);
		/* 3. turn on scramble setting */
		FUNC2(pAdapter, rCCK0_System, bCCKScramble, bEnable);
		/* 4. Turn On Single Carrier Tx and off the other test modes. */
		FUNC2(pAdapter, rOFDM1_LSTF, bOFDMContinueTx, bDisable);
		FUNC2(pAdapter, rOFDM1_LSTF, bOFDMSingleCarrier, bEnable);
		FUNC2(pAdapter, rOFDM1_LSTF, bOFDMSingleTone, bDisable);
	} else { /* Stop Single Carrier.*/
		/* Turn off all test modes.*/
		FUNC2(pAdapter, rOFDM1_LSTF, bOFDMContinueTx, bDisable);
		FUNC2(pAdapter, rOFDM1_LSTF, bOFDMSingleCarrier,
			   bDisable);
		FUNC2(pAdapter, rOFDM1_LSTF, bOFDMSingleTone, bDisable);
		FUNC1(20);
		/*BB Reset*/
		FUNC2(pAdapter, rPMAC_Reset, bBBResetB, 0x0);
		FUNC2(pAdapter, rPMAC_Reset, bBBResetB, 0x1);
	}
}