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
struct dwc2_hsotg {int ll_hw_enabled; } ;

/* Variables and functions */
 int FUNC0 (struct dwc2_hsotg*) ; 

int FUNC1(struct dwc2_hsotg *hsotg)
{
	int ret = FUNC0(hsotg);

	if (ret == 0)
		hsotg->ll_hw_enabled = false;
	return ret;
}