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
typedef  int /*<<< orphan*/  u8 ;
struct asd_ha_struct {int dummy; } ;

/* Variables and functions */
 int ASD_DEV_PRESENT_TIMEOUT ; 
 int /*<<< orphan*/  ASD_NOTIFY_ENABLE_SPINUP ; 
 int ASD_ONE_MILLISEC_TIMEOUT ; 
 int ASD_RCV_FIS_TIMEOUT ; 
 int ASD_SATA_INTERLOCK_TIMEOUT ; 
 int ASD_SMP_RCV_TIMEOUT ; 
 int ASD_SRST_ASSERT_TIMEOUT ; 
 int ASD_STP_SHUTDOWN_TIMEOUT ; 
 int ASD_TEN_MILLISEC_TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC41 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC42 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC43 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC44 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC45 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (struct asd_ha_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (struct asd_ha_struct*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC48 (struct asd_ha_struct*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC49(struct asd_ha_struct *asd_ha, u8 lseq)
{
	int i;

	/* LSEQ Mode independent page 0 setup. */
	FUNC48(asd_ha, FUNC32(lseq), 0xFFFF);
	FUNC48(asd_ha, FUNC33(lseq), 0xFFFF);
	FUNC46(asd_ha, FUNC30(lseq), lseq);
	FUNC46(asd_ha, FUNC40(lseq),
			   ASD_NOTIFY_ENABLE_SPINUP);
	FUNC47(asd_ha, FUNC3(lseq),0x08000000);
	FUNC48(asd_ha, FUNC1(lseq), 0);
	FUNC46(asd_ha, FUNC4(lseq), 0);
	FUNC46(asd_ha, FUNC2(lseq), 0);
	FUNC48(asd_ha, FUNC36(lseq), 0);
	FUNC48(asd_ha, FUNC37(lseq), 0);
	FUNC48(asd_ha, FUNC38(lseq), 0);
	FUNC47(asd_ha, FUNC35(lseq), 0);
	FUNC47(asd_ha, FUNC35(lseq)+4, 0);

	/* LSEQ Mode independent page 1 setup. */
	FUNC48(asd_ha, FUNC18(lseq), 0xFFFF);
	FUNC48(asd_ha, FUNC19(lseq), 0xFFFF);
	FUNC48(asd_ha, FUNC20(lseq), 0xFFFF);
	FUNC48(asd_ha, FUNC21(lseq), 0xFFFF);
	FUNC46(asd_ha, FUNC23(lseq), 0);
	FUNC46(asd_ha, FUNC24(lseq), 0);
	FUNC46(asd_ha, FUNC25(lseq), 0);
	FUNC46(asd_ha, FUNC26(lseq), 0);
	FUNC46(asd_ha, FUNC22(lseq), 0);
	FUNC46(asd_ha, FUNC27(lseq), 0);
	FUNC46(asd_ha, FUNC17(lseq), 0);
	FUNC47(asd_ha, FUNC45(lseq), 0);
	FUNC48(asd_ha, FUNC29(lseq), 0);
	FUNC48(asd_ha, FUNC28(lseq), 0);

	/* LSEQ Mode Independent page 2 setup. */
	FUNC48(asd_ha, FUNC12(lseq), 0xFFFF);
	FUNC48(asd_ha, FUNC13(lseq), 0xFFFF);
	FUNC48(asd_ha, FUNC14(lseq), 0xFFFF);
	FUNC48(asd_ha, FUNC15(lseq), 0xFFFF);
	FUNC46(asd_ha, FUNC8(lseq), 0);
	FUNC46(asd_ha, FUNC9(lseq), 0);
	FUNC46(asd_ha, FUNC10(lseq), 0);
	FUNC46(asd_ha, FUNC11(lseq), 0);
	FUNC46(asd_ha, FUNC7(lseq), 0);
	FUNC46(asd_ha, FUNC16(lseq), 0);
	FUNC46(asd_ha, FUNC6(lseq), 0);
	for (i = 0; i < 12; i += 4)
		FUNC47(asd_ha, FUNC0(lseq) + i, 0);

	/* LSEQ Mode Independent page 3 setup. */

	/* Device present timer timeout */
	FUNC47(asd_ha, FUNC5(lseq),
			    ASD_DEV_PRESENT_TIMEOUT);

	/* SATA interlock timer disabled */
	FUNC47(asd_ha, FUNC39(lseq),
			    ASD_SATA_INTERLOCK_TIMEOUT);

	/* STP shutdown timer timeout constant, IGNORED by the sequencer,
	 * always 0. */
	FUNC47(asd_ha, FUNC43(lseq),
			    ASD_STP_SHUTDOWN_TIMEOUT);

	FUNC47(asd_ha, FUNC42(lseq),
			    ASD_SRST_ASSERT_TIMEOUT);

	FUNC47(asd_ha, FUNC34(lseq),
			    ASD_RCV_FIS_TIMEOUT);

	FUNC47(asd_ha, FUNC31(lseq),
			    ASD_ONE_MILLISEC_TIMEOUT);

	/* COM_INIT timer */
	FUNC47(asd_ha, FUNC44(lseq),
			    ASD_TEN_MILLISEC_TIMEOUT);

	FUNC47(asd_ha, FUNC41(lseq),
			    ASD_SMP_RCV_TIMEOUT);
}