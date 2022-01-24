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
typedef  int u32 ;
struct ssb_chipcommon {int capabilities; } ;

/* Variables and functions */
 int SSB_CHIPCO_CAP_PLLT ; 
 int /*<<< orphan*/  SSB_CHIPCO_CLOCK_M2 ; 
 int /*<<< orphan*/  SSB_CHIPCO_CLOCK_MIPS ; 
 int /*<<< orphan*/  SSB_CHIPCO_CLOCK_N ; 
 int /*<<< orphan*/  SSB_CHIPCO_CLOCK_SB ; 
#define  SSB_PLLTYPE_2 132 
#define  SSB_PLLTYPE_3 131 
#define  SSB_PLLTYPE_4 130 
#define  SSB_PLLTYPE_6 129 
#define  SSB_PLLTYPE_7 128 
 int FUNC0 (struct ssb_chipcommon*,int /*<<< orphan*/ ) ; 

void FUNC1(struct ssb_chipcommon *cc,
                             u32 *plltype, u32 *n, u32 *m)
{
	*n = FUNC0(cc, SSB_CHIPCO_CLOCK_N);
	*plltype = (cc->capabilities & SSB_CHIPCO_CAP_PLLT);
	switch (*plltype) {
	case SSB_PLLTYPE_2:
	case SSB_PLLTYPE_4:
	case SSB_PLLTYPE_6:
	case SSB_PLLTYPE_7:
		*m = FUNC0(cc, SSB_CHIPCO_CLOCK_MIPS);
		break;
	case SSB_PLLTYPE_3:
		/* 5350 uses m2 to control mips */
		*m = FUNC0(cc, SSB_CHIPCO_CLOCK_M2);
		break;
	default:
		*m = FUNC0(cc, SSB_CHIPCO_CLOCK_SB);
		break;
	}
}