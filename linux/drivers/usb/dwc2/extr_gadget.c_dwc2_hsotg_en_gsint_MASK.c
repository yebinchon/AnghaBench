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
 int /*<<< orphan*/  GINTMSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dwc2_hsotg *hsotg, u32 ints)
{
	u32 gsintmsk = FUNC1(hsotg, GINTMSK);
	u32 new_gsintmsk;

	new_gsintmsk = gsintmsk | ints;

	if (new_gsintmsk != gsintmsk) {
		FUNC0(hsotg->dev, "gsintmsk now 0x%08x\n", new_gsintmsk);
		FUNC2(hsotg, new_gsintmsk, GINTMSK);
	}
}