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
 int /*<<< orphan*/  autoresume_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  func_inst_lb ; 
 int /*<<< orphan*/  func_inst_ss ; 
 int /*<<< orphan*/  func_lb ; 
 int /*<<< orphan*/  func_ss ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** otg_desc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_composite_dev *cdev)
{
	FUNC1(&autoresume_timer);
	if (!FUNC0(func_ss))
		FUNC3(func_ss);
	FUNC4(func_inst_ss);
	if (!FUNC0(func_lb))
		FUNC3(func_lb);
	FUNC4(func_inst_lb);
	FUNC2(otg_desc[0]);
	otg_desc[0] = NULL;

	return 0;
}