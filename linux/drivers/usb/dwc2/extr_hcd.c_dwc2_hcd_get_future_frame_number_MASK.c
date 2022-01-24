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
struct dwc2_hsotg {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  HFIR ; 
 int HFIR_FRINT_MASK ; 
 int HFIR_FRINT_SHIFT ; 
 int /*<<< orphan*/  HFNUM ; 
 int HFNUM_FRNUM_MASK ; 
 int HFNUM_FRNUM_SHIFT ; 
 int HFNUM_FRREM_MASK ; 
 int HFNUM_FRREM_SHIFT ; 
 int /*<<< orphan*/  HPRT0 ; 
 int HPRT0_SPD_MASK ; 
 int FUNC1 (unsigned int,unsigned int) ; 
 int FUNC2 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 

int FUNC3(struct dwc2_hsotg *hsotg, int us)
{
	u32 hprt = FUNC2(hsotg, HPRT0);
	u32 hfir = FUNC2(hsotg, HFIR);
	u32 hfnum = FUNC2(hsotg, HFNUM);
	unsigned int us_per_frame;
	unsigned int frame_number;
	unsigned int remaining;
	unsigned int interval;
	unsigned int phy_clks;

	/* High speed has 125 us per (micro) frame; others are 1 ms per */
	us_per_frame = (hprt & HPRT0_SPD_MASK) ? 1000 : 125;

	/* Extract fields */
	frame_number = (hfnum & HFNUM_FRNUM_MASK) >> HFNUM_FRNUM_SHIFT;
	remaining = (hfnum & HFNUM_FRREM_MASK) >> HFNUM_FRREM_SHIFT;
	interval = (hfir & HFIR_FRINT_MASK) >> HFIR_FRINT_SHIFT;

	/*
	 * Number of phy clocks since the last tick of the frame number after
	 * "us" has passed.
	 */
	phy_clks = (interval - remaining) +
		   FUNC0(interval * us, us_per_frame);

	return FUNC1(frame_number, phy_clks / interval);
}