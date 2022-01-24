#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct asd_ha_struct {TYPE_2__* phys; } ;
struct TYPE_4__ {TYPE_1__* phy_desc; } ;
struct TYPE_3__ {int* sas_addr; } ;

/* Variables and functions */
 int ASD_SATA_INTERLOCK_TIMEOUT ; 
 int EN_ARP2HALTC ; 
 int LEDMODE_TXRX ; 
 int LEDTIMER ; 
 int LEDTIMERS_100ms ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int LmBLIND48 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int LmFRMERREN_MASK ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int LmHWTSTATEN_MASK ; 
 int LmM0INTEN_MASK ; 
 int LmM1INTEN_MASK ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int LmM2INTEN_MASK ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int LmM5INTEN_MASK ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int LmMnBUFPERR ; 
 scalar_t__ FUNC22 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int,int) ; 
 int /*<<< orphan*/  FUNC24 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int,int) ; 
 int /*<<< orphan*/  FUNC27 (int,int) ; 
 scalar_t__ FUNC28 (int,int) ; 
 scalar_t__ FUNC29 (int,int) ; 
 scalar_t__ FUNC30 (int,int) ; 
 scalar_t__ FUNC31 (int,int) ; 
 int LmMnXFRLVL_256 ; 
 int LmMnXFRLVL_512 ; 
 scalar_t__ FUNC32 (int,int) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 int /*<<< orphan*/  FUNC34 (int) ; 
 int LmPRIMSTAT0EN_MASK ; 
 int /*<<< orphan*/  FUNC35 (int) ; 
 int LmPRIMSTAT1EN_MASK ; 
 int /*<<< orphan*/  FUNC36 (int) ; 
 int /*<<< orphan*/  FUNC37 (int) ; 
 int /*<<< orphan*/  FUNC38 (int) ; 
 int /*<<< orphan*/  FUNC39 (int) ; 
 scalar_t__ FUNC40 (int) ; 
 scalar_t__ FUNC41 (int) ; 
 int RSTINTCTL ; 
 int SAS_ADDR_SIZE ; 
 int SAS_ALIGN_DEFAULT ; 
 int STP_ALIGN_DEFAULT ; 
 int /*<<< orphan*/  FUNC42 (struct asd_ha_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (struct asd_ha_struct*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC44 (struct asd_ha_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC45 (struct asd_ha_struct*,int /*<<< orphan*/ ,int) ; 
 int lseq_idle_loop ; 
 int* lseq_vecs ; 

__attribute__((used)) static void FUNC46(struct asd_ha_struct *asd_ha, int lseq)
{
	u8  *sas_addr;
	int  i;

	/* Enable ARP2HALTC (ARP2 Halted from Halt Code Write). */
	FUNC44(asd_ha, FUNC1(lseq), EN_ARP2HALTC);

	FUNC43(asd_ha, FUNC40(lseq), 0);

	/* Initialize Mode 0,1, and 2 SCRATCHPAGE to 0. */
	for (i = 0; i < 3; i++)
		FUNC43(asd_ha, FUNC29(lseq, i), 0);

	/* Initialize Mode 5 SCRATCHPAGE to 0. */
	FUNC43(asd_ha, FUNC29(lseq, 5), 0);

	FUNC44(asd_ha, FUNC39(lseq), 0);
	/* Initialize Mode 0,1,2 and 5 Interrupt Enable and
	 * Interrupt registers. */
	FUNC44(asd_ha, FUNC27(lseq, 0), LmM0INTEN_MASK);
	FUNC44(asd_ha, FUNC26(lseq, 0), 0xFFFFFFFF);
	/* Mode 1 */
	FUNC44(asd_ha, FUNC27(lseq, 1), LmM1INTEN_MASK);
	FUNC44(asd_ha, FUNC26(lseq, 1), 0xFFFFFFFF);
	/* Mode 2 */
	FUNC44(asd_ha, FUNC27(lseq, 2), LmM2INTEN_MASK);
	FUNC44(asd_ha, FUNC26(lseq, 2), 0xFFFFFFFF);
	/* Mode 5 */
	FUNC44(asd_ha, FUNC27(lseq, 5), LmM5INTEN_MASK);
	FUNC44(asd_ha, FUNC26(lseq, 5), 0xFFFFFFFF);

	/* Enable HW Timer status. */
	FUNC43(asd_ha, FUNC6(lseq), LmHWTSTATEN_MASK);

	/* Enable Primitive Status 0 and 1. */
	FUNC44(asd_ha, FUNC34(lseq), LmPRIMSTAT0EN_MASK);
	FUNC44(asd_ha, FUNC35(lseq), LmPRIMSTAT1EN_MASK);

	/* Enable Frame Error. */
	FUNC44(asd_ha, FUNC4(lseq), LmFRMERREN_MASK);
	FUNC43(asd_ha, FUNC25(lseq, 0), 0x50);

	/* Initialize Mode 0 Transfer Level to 512. */
	FUNC43(asd_ha,  FUNC31(lseq, 0), LmMnXFRLVL_512);
	/* Initialize Mode 1 Transfer Level to 256. */
	FUNC43(asd_ha, FUNC31(lseq, 1), LmMnXFRLVL_256);

	/* Initialize Program Count. */
	FUNC45(asd_ha, FUNC33(lseq), lseq_idle_loop);

	/* Enable Blind SG Move. */
	FUNC44(asd_ha, FUNC21(lseq), LmBLIND48);
	FUNC45(asd_ha, FUNC20(lseq),
			   ASD_SATA_INTERLOCK_TIMEOUT);

	(void) FUNC42(asd_ha, FUNC38(lseq));

	/* Clear Primitive Status 0 and 1. */
	FUNC44(asd_ha, FUNC36(lseq), 0xFFFFFFFF);
	FUNC44(asd_ha, FUNC37(lseq), 0xFFFFFFFF);

	/* Clear HW Timer status. */
	FUNC43(asd_ha, FUNC5(lseq), 0xFF);

	/* Clear DMA Errors for Mode 0 and 1. */
	FUNC43(asd_ha, FUNC23(lseq, 0), 0xFF);
	FUNC43(asd_ha, FUNC23(lseq, 1), 0xFF);

	/* Clear SG DMA Errors for Mode 0 and 1. */
	FUNC43(asd_ha, FUNC30(lseq, 0), 0xFF);
	FUNC43(asd_ha, FUNC30(lseq, 1), 0xFF);

	/* Clear Mode 0 Buffer Parity Error. */
	FUNC43(asd_ha, FUNC22(lseq, 0), LmMnBUFPERR);

	/* Clear Mode 0 Frame Error register. */
	FUNC44(asd_ha, FUNC24(lseq, 0), 0xFFFFFFFF);

	/* Reset LSEQ external interrupt arbiter. */
	FUNC43(asd_ha, FUNC0(lseq), RSTINTCTL);

	/* Set the Phy SAS for the LmSEQ WWN. */
	sas_addr = asd_ha->phys[lseq].phy_desc->sas_addr;
	for (i = 0; i < SAS_ADDR_SIZE; i++)
		FUNC43(asd_ha, FUNC41(lseq) + i, sas_addr[i]);

	/* Set the Transmit Size to 1024 bytes, 0 = 256 Dwords. */
	FUNC43(asd_ha, FUNC32(lseq, 1), 0);

	/* Set the Bus Inactivity Time Limit Timer. */
	FUNC45(asd_ha, FUNC2(lseq), 9);

	/* Enable SATA Port Multiplier. */
	FUNC43(asd_ha, FUNC28(lseq, 1), 0x80);

	/* Initialize Interrupt Vector[0-10] address in Mode 3.
	 * See the comment on CSEQ_INT_* */
	FUNC45(asd_ha, FUNC9(lseq), lseq_vecs[0]);
	FUNC45(asd_ha, FUNC10(lseq), lseq_vecs[1]);
	FUNC45(asd_ha, FUNC12(lseq), lseq_vecs[2]);
	FUNC45(asd_ha, FUNC13(lseq), lseq_vecs[3]);
	FUNC45(asd_ha, FUNC14(lseq), lseq_vecs[4]);
	FUNC45(asd_ha, FUNC15(lseq), lseq_vecs[5]);
	FUNC45(asd_ha, FUNC16(lseq), lseq_vecs[6]);
	FUNC45(asd_ha, FUNC17(lseq), lseq_vecs[7]);
	FUNC45(asd_ha, FUNC18(lseq), lseq_vecs[8]);
	FUNC45(asd_ha, FUNC19(lseq), lseq_vecs[9]);
	FUNC45(asd_ha, FUNC11(lseq), lseq_vecs[10]);
	/*
	 * Program the Link LED control, applicable only for
	 * Chip Rev. B or later.
	 */
	FUNC44(asd_ha, FUNC3(lseq),
			    (LEDTIMER | LEDMODE_TXRX | LEDTIMERS_100ms));

	/* Set the Align Rate for SAS and STP mode. */
	FUNC43(asd_ha, FUNC7(lseq), SAS_ALIGN_DEFAULT);
	FUNC43(asd_ha, FUNC8(lseq), STP_ALIGN_DEFAULT);
}