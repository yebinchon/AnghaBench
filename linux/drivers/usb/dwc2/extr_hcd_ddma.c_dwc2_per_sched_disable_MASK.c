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
struct dwc2_hsotg {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCFG ; 
 int HCFG_PERSCHEDENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct dwc2_hsotg *hsotg)
{
	u32 hcfg;
	unsigned long flags;

	FUNC3(&hsotg->lock, flags);

	hcfg = FUNC1(hsotg, HCFG);
	if (!(hcfg & HCFG_PERSCHEDENA)) {
		/* already disabled */
		FUNC4(&hsotg->lock, flags);
		return;
	}

	hcfg &= ~HCFG_PERSCHEDENA;
	FUNC0(hsotg->dev, "Disabling Periodic schedule\n");
	FUNC2(hsotg, hcfg, HCFG);

	FUNC4(&hsotg->lock, flags);
}