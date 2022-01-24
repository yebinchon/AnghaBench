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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ acg_enable; } ;
struct dwc2_hsotg {int /*<<< orphan*/  dev; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCGCCTL1 ; 
 int /*<<< orphan*/  PCGCCTL1_GATEEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct dwc2_hsotg *hsotg)
{
	if (hsotg->params.acg_enable) {
		u32 pcgcctl1 = FUNC1(hsotg, PCGCCTL1);

		FUNC0(hsotg->dev, "Enabling Active Clock Gating\n");
		pcgcctl1 |= PCGCCTL1_GATEEN;
		FUNC2(hsotg, pcgcctl1, PCGCCTL1);
	}
}