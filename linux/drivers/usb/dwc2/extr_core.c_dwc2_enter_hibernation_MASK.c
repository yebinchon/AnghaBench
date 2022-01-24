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
struct TYPE_2__ {scalar_t__ power_down; } ;
struct dwc2_hsotg {TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ DWC2_POWER_DOWN_PARAM_HIBERNATION ; 
 int ENOTSUPP ; 
 int FUNC0 (struct dwc2_hsotg*) ; 
 int FUNC1 (struct dwc2_hsotg*) ; 

int FUNC2(struct dwc2_hsotg *hsotg, int is_host)
{
	if (hsotg->params.power_down != DWC2_POWER_DOWN_PARAM_HIBERNATION)
		return -ENOTSUPP;

	if (is_host)
		return FUNC1(hsotg);
	else
		return FUNC0(hsotg);
}