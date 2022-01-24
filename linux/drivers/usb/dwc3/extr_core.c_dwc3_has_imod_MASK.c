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
struct dwc3 {scalar_t__ revision; } ;

/* Variables and functions */
 scalar_t__ DWC3_REVISION_300A ; 
 scalar_t__ DWC3_USB31_REVISION_120A ; 
 scalar_t__ FUNC0 (struct dwc3*) ; 
 scalar_t__ FUNC1 (struct dwc3*) ; 

bool FUNC2(struct dwc3 *dwc)
{
	return ((FUNC0(dwc) &&
		 dwc->revision >= DWC3_REVISION_300A) ||
		(FUNC1(dwc) &&
		 dwc->revision >= DWC3_USB31_REVISION_120A));
}