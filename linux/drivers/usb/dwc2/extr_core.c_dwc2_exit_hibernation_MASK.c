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
struct dwc2_hsotg {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dwc2_hsotg*,int,int) ; 
 int FUNC1 (struct dwc2_hsotg*,int,int) ; 

int FUNC2(struct dwc2_hsotg *hsotg, int rem_wakeup,
			  int reset, int is_host)
{
	if (is_host)
		return FUNC1(hsotg, rem_wakeup, reset);
	else
		return FUNC0(hsotg, rem_wakeup, reset);
}