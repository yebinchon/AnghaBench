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
struct dwc2_hsotg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GAHBCFG ; 
 int /*<<< orphan*/  GAHBCFG_GLBL_INTR_EN ; 
 int /*<<< orphan*/  FUNC0 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct dwc2_hsotg *hsotg)
{
	u32 ahbcfg = FUNC0(hsotg, GAHBCFG);

	ahbcfg &= ~GAHBCFG_GLBL_INTR_EN;
	FUNC1(hsotg, ahbcfg, GAHBCFG);
}