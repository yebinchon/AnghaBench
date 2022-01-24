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
struct dwc2_hsotg {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFNUM ; 
 int HFNUM_FRNUM_MASK ; 
 int HFNUM_FRNUM_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 

int FUNC2(struct dwc2_hsotg *hsotg)
{
	u32 hfnum = FUNC1(hsotg, HFNUM);

#ifdef DWC2_DEBUG_SOF
	dev_vdbg(hsotg->dev, "DWC OTG HCD GET FRAME NUMBER %d\n",
		 (hfnum & HFNUM_FRNUM_MASK) >> HFNUM_FRNUM_SHIFT);
#endif
	return (hfnum & HFNUM_FRNUM_MASK) >> HFNUM_FRNUM_SHIFT;
}