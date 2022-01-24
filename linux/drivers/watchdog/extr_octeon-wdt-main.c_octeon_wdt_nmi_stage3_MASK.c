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
struct TYPE_2__ {int cnt; } ;
union cvmx_ciu_wdogx {void* u64; TYPE_1__ s; } ;
typedef  int u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CVMX_RST_SOFT_RST ; 
 int /*<<< orphan*/  OCTEON_CN68XX ; 
 int /*<<< orphan*/  OCTEON_CN70XX ; 
 int /*<<< orphan*/  OCTEON_FEATURE_CIU3 ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 unsigned int FUNC11 () ; 
 unsigned int FUNC12 () ; 
 unsigned int FUNC13 () ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 void* FUNC15 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int FUNC20 () ; 
 int FUNC21 () ; 
 int FUNC22 () ; 
 int FUNC23 () ; 
 char** reg_name ; 
 int /*<<< orphan*/  FUNC24 (int) ; 

void FUNC25(u64 reg[32])
{
	u64 i;

	unsigned int coreid = FUNC11();
	/*
	 * Save status and cause early to get them before any changes
	 * might happen.
	 */
	u64 cp0_cause = FUNC20();
	u64 cp0_status = FUNC23();
	u64 cp0_error_epc = FUNC22();
	u64 cp0_epc = FUNC21();

	/* Delay so output from all cores output is not jumbled together. */
	FUNC24(85000 * coreid);

	FUNC19("\r\n*** NMI Watchdog interrupt on Core 0x");
	FUNC18(coreid, 2);
	FUNC19(" ***\r\n");
	for (i = 0; i < 32; i++) {
		FUNC19("\t");
		FUNC19(reg_name[i]);
		FUNC19("\t0x");
		FUNC18(reg[i], 16);
		if (i & 1)
			FUNC19("\r\n");
	}
	FUNC19("\terr_epc\t0x");
	FUNC18(cp0_error_epc, 16);

	FUNC19("\tepc\t0x");
	FUNC18(cp0_epc, 16);
	FUNC19("\r\n");

	FUNC19("\tstatus\t0x");
	FUNC18(cp0_status, 16);
	FUNC19("\tcause\t0x");
	FUNC18(cp0_cause, 16);
	FUNC19("\r\n");

	/* The CIU register is different for each Octeon model. */
	if (FUNC9(OCTEON_CN68XX)) {
		FUNC19("\tsrc_wd\t0x");
		FUNC18(FUNC14(FUNC3(coreid)), 16);
		FUNC19("\ten_wd\t0x");
		FUNC18(FUNC14(FUNC1(coreid)), 16);
		FUNC19("\r\n");
		FUNC19("\tsrc_rml\t0x");
		FUNC18(FUNC14(FUNC2(coreid)), 16);
		FUNC19("\ten_rml\t0x");
		FUNC18(FUNC14(FUNC0(coreid)), 16);
		FUNC19("\r\n");
		FUNC19("\tsum\t0x");
		FUNC18(FUNC14(FUNC4(coreid)), 16);
		FUNC19("\r\n");
	} else if (!FUNC17(OCTEON_FEATURE_CIU3)) {
		FUNC19("\tsum0\t0x");
		FUNC18(FUNC14(FUNC6(coreid * 2)), 16);
		FUNC19("\ten0\t0x");
		FUNC18(FUNC14(FUNC5(coreid * 2)), 16);
		FUNC19("\r\n");
	}

	FUNC19("*** Chip soft reset soon ***\r\n");

	/*
	 * G-30204: We must trigger a soft reset before watchdog
	 * does an incomplete job of doing it.
	 */
	if (FUNC10() && !FUNC9(OCTEON_CN70XX)) {
		u64 scr;
		unsigned int node = FUNC13();
		unsigned int lcore = FUNC12();
		union cvmx_ciu_wdogx ciu_wdog;

		/*
		 * Wait for other cores to print out information, but
		 * not too long.  Do the soft reset before watchdog
		 * can trigger it.
		 */
		do {
			ciu_wdog.u64 = FUNC15(node, FUNC7(lcore));
		} while (ciu_wdog.s.cnt > 0x10000);

		scr = FUNC15(0, FUNC8(0));
		scr |= 1 << 11; /* Indicate watchdog in bit 11 */
		FUNC16(0, FUNC8(0), scr);
		FUNC16(0, CVMX_RST_SOFT_RST, 1);
	}
}