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
typedef  int u8 ;
struct TYPE_2__ {int curr_bandwidth; } ;
struct _adapter {TYPE_1__ mppriv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int HAL_PRIME_CHNL_OFFSET_DONT_CARE ; 
#define  HT_CHANNEL_WIDTH_20 129 
#define  HT_CHANNEL_WIDTH_40 128 
 int /*<<< orphan*/  RF_CHNLBW ; 
 int /*<<< orphan*/  RF_PATH_A ; 
 int bCCKSideBand ; 
 int bMaskDWord ; 
 int bRFMOD ; 
 int FUNC1 (struct _adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,int,int) ; 
 int /*<<< orphan*/  rCCK0_System ; 
 int /*<<< orphan*/  rFPGA0_AnalogParameter2 ; 
 int /*<<< orphan*/  rFPGA0_RFMOD ; 
 int /*<<< orphan*/  rFPGA1_RFMOD ; 
 int /*<<< orphan*/  rOFDM1_LSTF ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

void FUNC5(struct _adapter *pAdapter)
{
	/* 3 1.Set MAC register : BWOPMODE  bit2:1 20MhzBW */
	u8 regBwOpMode = 0;
	u8 Bandwidth = pAdapter->mppriv.curr_bandwidth;

	regBwOpMode = FUNC1(pAdapter, 0x10250203);
	if (Bandwidth == HT_CHANNEL_WIDTH_20)
		regBwOpMode |= FUNC0(2);
	else
		regBwOpMode &= ~(FUNC0(2));
	FUNC2(pAdapter, 0x10250203, regBwOpMode);
	/* 3 2.Set PHY related register */
	switch (Bandwidth) {
	/* 20 MHz channel*/
	case HT_CHANNEL_WIDTH_20:
		FUNC3(pAdapter, rFPGA0_RFMOD, bRFMOD, 0x0);
		FUNC3(pAdapter, rFPGA1_RFMOD, bRFMOD, 0x0);
		/* Use PHY_REG.txt default value. Do not need to change.
		 * Correct the tx power for CCK rate in 40M.
		 * It is set in Tx descriptor for 8192x series
		 */
		FUNC3(pAdapter, rFPGA0_AnalogParameter2, bMaskDWord, 0x58);
		break;
	/* 40 MHz channel*/
	case HT_CHANNEL_WIDTH_40:
		FUNC3(pAdapter, rFPGA0_RFMOD, bRFMOD, 0x1);
		FUNC3(pAdapter, rFPGA1_RFMOD, bRFMOD, 0x1);
		/* Use PHY_REG.txt default value. Do not need to change.
		 * Correct the tx power for CCK rate in 40M.
		 * Set Control channel to upper or lower. These settings are
		 * required only for 40MHz
		 */
		FUNC3(pAdapter, rCCK0_System, bCCKSideBand,
			   (HAL_PRIME_CHNL_OFFSET_DONT_CARE >> 1));
		FUNC3(pAdapter, rOFDM1_LSTF, 0xC00,
			   HAL_PRIME_CHNL_OFFSET_DONT_CARE);
		FUNC3(pAdapter, rFPGA0_AnalogParameter2, bMaskDWord, 0x18);
		break;
	default:
		break;
	}

	/* 3 3.Set RF related register */
	switch (Bandwidth) {
	case HT_CHANNEL_WIDTH_20:
		FUNC4(pAdapter, RF_PATH_A, RF_CHNLBW,
			   FUNC0(10) | FUNC0(11), 0x01);
		break;
	case HT_CHANNEL_WIDTH_40:
		FUNC4(pAdapter, RF_PATH_A, RF_CHNLBW,
			   FUNC0(10) | FUNC0(11), 0x00);
		break;
	default:
		break;
	}
}