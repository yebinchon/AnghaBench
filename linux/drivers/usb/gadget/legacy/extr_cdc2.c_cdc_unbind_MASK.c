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
struct usb_composite_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f_acm ; 
 int /*<<< orphan*/  f_ecm ; 
 int /*<<< orphan*/  fi_ecm ; 
 int /*<<< orphan*/  fi_serial ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** otg_desc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_composite_dev *cdev)
{
	FUNC2(f_acm);
	FUNC3(fi_serial);
	if (!FUNC0(f_ecm))
		FUNC2(f_ecm);
	if (!FUNC0(fi_ecm))
		FUNC3(fi_ecm);
	FUNC1(otg_desc[0]);
	otg_desc[0] = NULL;

	return 0;
}