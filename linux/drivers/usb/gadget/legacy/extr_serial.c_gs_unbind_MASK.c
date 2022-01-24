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
 int /*<<< orphan*/ * f_serial ; 
 int /*<<< orphan*/ * fi_serial ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int n_ports ; 
 int /*<<< orphan*/ ** otg_desc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_composite_dev *cdev)
{
	int i;

	for (i = 0; i < n_ports; i++) {
		FUNC1(f_serial[i]);
		FUNC2(fi_serial[i]);
	}

	FUNC0(otg_desc[0]);
	otg_desc[0] = NULL;

	return 0;
}