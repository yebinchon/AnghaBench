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
struct ssb_chipcommon {int dummy; } ;
struct pmu0_plltab_entry {int freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SSB_CHIPCO_PMU_CTL ; 
 int SSB_CHIPCO_PMU_CTL_XTALFREQ ; 
 int SSB_CHIPCO_PMU_CTL_XTALFREQ_SHIFT ; 
 int FUNC1 (struct ssb_chipcommon*,int /*<<< orphan*/ ) ; 
 struct pmu0_plltab_entry* FUNC2 (int) ; 

__attribute__((used)) static u32 FUNC3(struct ssb_chipcommon *cc)
{
	u32 crystalfreq;
	const struct pmu0_plltab_entry *e = NULL;

	crystalfreq = (FUNC1(cc, SSB_CHIPCO_PMU_CTL) &
		       SSB_CHIPCO_PMU_CTL_XTALFREQ)  >> SSB_CHIPCO_PMU_CTL_XTALFREQ_SHIFT;
	e = FUNC2(crystalfreq);
	FUNC0(!e);
	return e->freq * 1000;
}