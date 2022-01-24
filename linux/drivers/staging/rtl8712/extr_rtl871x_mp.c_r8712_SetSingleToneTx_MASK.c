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
struct TYPE_2__ {int antenna_tx; } ;
struct _adapter {TYPE_1__ mppriv; } ;

/* Variables and functions */
#define  ANTENNA_A 129 
#define  ANTENNA_B 128 
 int /*<<< orphan*/  RF_AC ; 
 scalar_t__ RF_PATH_A ; 
 scalar_t__ RF_PATH_B ; 
 int /*<<< orphan*/  RF_TX_G2 ; 
 int /*<<< orphan*/  bCCKEn ; 
 int /*<<< orphan*/  bDisable ; 
 int /*<<< orphan*/  bEnable ; 
 int /*<<< orphan*/  bOFDMEn ; 
 int /*<<< orphan*/  bRFRegOffsetMask ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  rFPGA0_RFMOD ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct _adapter *pAdapter, u8 bStart)
{
	u8 rfPath;

	switch (pAdapter->mppriv.antenna_tx) {
	case ANTENNA_B:
		rfPath = RF_PATH_B;
		break;
	case ANTENNA_A:
	default:
		rfPath = RF_PATH_A;
		break;
	}
	if (bStart) { /* Start Single Tone.*/
		FUNC1(pAdapter, rFPGA0_RFMOD, bCCKEn, bDisable);
		FUNC1(pAdapter, rFPGA0_RFMOD, bOFDMEn, bDisable);
		FUNC2(pAdapter, rfPath, RF_TX_G2, bRFRegOffsetMask,
			   0xd4000);
		FUNC0(100);
		/* PAD all on.*/
		FUNC2(pAdapter, rfPath, RF_AC, bRFRegOffsetMask, 0x2001f);
		FUNC0(100);
	} else { /* Stop Single Tone.*/
		FUNC1(pAdapter, rFPGA0_RFMOD, bCCKEn, bEnable);
		FUNC1(pAdapter, rFPGA0_RFMOD, bOFDMEn, bEnable);
		FUNC2(pAdapter, rfPath, RF_TX_G2, bRFRegOffsetMask,
			   0x54000);
		FUNC0(100);
		/* PAD all on.*/
		FUNC2(pAdapter, rfPath, RF_AC, bRFRegOffsetMask, 0x30000);
		FUNC0(100);
	}
}