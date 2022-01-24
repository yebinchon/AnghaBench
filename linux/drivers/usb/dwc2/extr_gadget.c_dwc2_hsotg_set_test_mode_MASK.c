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
 int DCTL_TSTCTL_MASK ; 
 int DCTL_TSTCTL_SHIFT ; 
 int EINVAL ; 
#define  TEST_FORCE_EN 132 
#define  TEST_J 131 
#define  TEST_K 130 
#define  TEST_PACKET 129 
#define  TEST_SE0_NAK 128 
 int FUNC0 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct dwc2_hsotg *hsotg, int testmode)
{
	int dctl = FUNC0(hsotg, DCTL);

	dctl &= ~DCTL_TSTCTL_MASK;
	switch (testmode) {
	case TEST_J:
	case TEST_K:
	case TEST_SE0_NAK:
	case TEST_PACKET:
	case TEST_FORCE_EN:
		dctl |= testmode << DCTL_TSTCTL_SHIFT;
		break;
	default:
		return -EINVAL;
	}
	FUNC1(hsotg, dctl, DCTL);
	return 0;
}