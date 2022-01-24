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
struct usb_composite_dev {int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f_ecm ; 
 int /*<<< orphan*/  f_eem ; 
 int /*<<< orphan*/  f_geth ; 
 int /*<<< orphan*/  f_rndis ; 
 int /*<<< orphan*/  fi_ecm ; 
 int /*<<< orphan*/  fi_eem ; 
 int /*<<< orphan*/  fi_geth ; 
 int /*<<< orphan*/  fi_rndis ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** otg_desc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ use_eem ; 

__attribute__((used)) static int FUNC5(struct usb_composite_dev *cdev)
{
	if (FUNC1()) {
		FUNC3(f_rndis);
		FUNC4(fi_rndis);
	}
	if (use_eem) {
		FUNC3(f_eem);
		FUNC4(fi_eem);
	} else if (FUNC0(cdev->gadget)) {
		FUNC3(f_ecm);
		FUNC4(fi_ecm);
	} else {
		FUNC3(f_geth);
		FUNC4(fi_geth);
	}
	FUNC2(otg_desc[0]);
	otg_desc[0] = NULL;

	return 0;
}