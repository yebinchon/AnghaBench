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
 int /*<<< orphan*/  GAHBCFG ; 
 int GAHBCFG_GLBL_INTR_EN ; 
 int /*<<< orphan*/  GINTMSK ; 
 int GINTMSK_COMMON ; 
 int /*<<< orphan*/  GINTSTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct dwc2_hsotg *hsotg)
{
	u32 gintsts;
	u32 gintmsk;
	u32 gahbcfg;
	u32 gintmsk_common = GINTMSK_COMMON;

	gintsts = FUNC1(hsotg, GINTSTS);
	gintmsk = FUNC1(hsotg, GINTMSK);
	gahbcfg = FUNC1(hsotg, GAHBCFG);

	/* If any common interrupts set */
	if (gintsts & gintmsk_common)
		FUNC0(hsotg->dev, "gintsts=%08x  gintmsk=%08x\n",
			gintsts, gintmsk);

	if (gahbcfg & GAHBCFG_GLBL_INTR_EN)
		return gintsts & gintmsk & gintmsk_common;
	else
		return 0;
}