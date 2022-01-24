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
 int /*<<< orphan*/  DCTL ; 
 int /*<<< orphan*/  DCTL_SFTDISCON ; 
 int /*<<< orphan*/  FUNC0 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct dwc2_hsotg *hsotg)
{
	/* set the soft-disconnect bit */
	FUNC0(hsotg, DCTL, DCTL_SFTDISCON);
}