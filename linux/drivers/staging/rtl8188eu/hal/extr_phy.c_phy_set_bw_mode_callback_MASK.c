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
typedef  int u8 ;
struct hal_data_8188e {int CurrentChannelBW; int nCur40MhzPrimeSC; } ;
struct adapter {scalar_t__ bDriverStopped; struct hal_data_8188e* HalData; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BW_OPMODE_20MHZ ; 
 int HAL_PRIME_CHNL_OFFSET_LOWER ; 
#define  HT_CHANNEL_WIDTH_20 129 
#define  HT_CHANNEL_WIDTH_40 128 
 scalar_t__ REG_BWOPMODE ; 
 scalar_t__ REG_RRSR ; 
 int bCCKSideBand ; 
 int bRFMOD ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int,int,int) ; 
 int rCCK0_System ; 
 int rFPGA0_RFMOD ; 
 int rFPGA1_RFMOD ; 
 int rOFDM1_LSTF ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int) ; 
 int FUNC3 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC5(struct adapter *adapt)
{
	struct hal_data_8188e *hal_data = adapt->HalData;
	u8 reg_bw_opmode;
	u8 reg_prsr_rsc;

	if (adapt->bDriverStopped)
		return;

	/* Set MAC register */

	reg_bw_opmode = FUNC3(adapt, REG_BWOPMODE);
	reg_prsr_rsc = FUNC3(adapt, REG_RRSR+2);

	switch (hal_data->CurrentChannelBW) {
	case HT_CHANNEL_WIDTH_20:
		reg_bw_opmode |= BW_OPMODE_20MHZ;
		FUNC4(adapt, REG_BWOPMODE, reg_bw_opmode);
		break;
	case HT_CHANNEL_WIDTH_40:
		reg_bw_opmode &= ~BW_OPMODE_20MHZ;
		FUNC4(adapt, REG_BWOPMODE, reg_bw_opmode);
		reg_prsr_rsc = (reg_prsr_rsc&0x90) |
			       (hal_data->nCur40MhzPrimeSC<<5);
		FUNC4(adapt, REG_RRSR+2, reg_prsr_rsc);
		break;
	default:
		break;
	}

	/* Set PHY related register */
	switch (hal_data->CurrentChannelBW) {
	case HT_CHANNEL_WIDTH_20:
		FUNC1(adapt, rFPGA0_RFMOD, bRFMOD, 0x0);
		FUNC1(adapt, rFPGA1_RFMOD, bRFMOD, 0x0);
		break;
	case HT_CHANNEL_WIDTH_40:
		FUNC1(adapt, rFPGA0_RFMOD, bRFMOD, 0x1);
		FUNC1(adapt, rFPGA1_RFMOD, bRFMOD, 0x1);
		/* Set Control channel to upper or lower.
		 * These settings are required only for 40MHz
		 */
		FUNC1(adapt, rCCK0_System, bCCKSideBand,
		    (hal_data->nCur40MhzPrimeSC>>1));
		FUNC1(adapt, rOFDM1_LSTF, 0xC00,
			       hal_data->nCur40MhzPrimeSC);
		FUNC1(adapt, 0x818, (FUNC0(26) | FUNC0(27)),
		   (hal_data->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_LOWER) ? 2 : 1);
		break;
	default:
		break;
	}

	/* Set RF related register */
	FUNC2(adapt, hal_data->CurrentChannelBW);
}