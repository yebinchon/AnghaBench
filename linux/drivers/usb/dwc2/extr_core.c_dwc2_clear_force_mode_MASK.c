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
typedef  int /*<<< orphan*/  u32 ;
struct dwc2_hsotg {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUSBCFG ; 
 int /*<<< orphan*/  GUSBCFG_FORCEDEVMODE ; 
 int /*<<< orphan*/  GUSBCFG_FORCEHOSTMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*) ; 
 scalar_t__ FUNC2 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct dwc2_hsotg *hsotg)
{
	u32 gusbcfg;

	if (!FUNC1(hsotg))
		return;

	FUNC0(hsotg->dev, "Clearing force mode bits\n");

	gusbcfg = FUNC3(hsotg, GUSBCFG);
	gusbcfg &= ~GUSBCFG_FORCEHOSTMODE;
	gusbcfg &= ~GUSBCFG_FORCEDEVMODE;
	FUNC4(hsotg, gusbcfg, GUSBCFG);

	if (FUNC2(hsotg))
		FUNC5(100);
}