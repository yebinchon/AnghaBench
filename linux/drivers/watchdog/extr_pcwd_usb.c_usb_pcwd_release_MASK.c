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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int expect_release ; 
 int /*<<< orphan*/  is_active ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  usb_pcwd_device ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	/*
	 *      Shut off the timer.
	 */
	if (expect_release == 42) {
		FUNC3(usb_pcwd_device);
	} else {
		FUNC1("Unexpected close, not stopping watchdog!\n");
		FUNC2(usb_pcwd_device);
	}
	expect_release = 0;
	FUNC0(0, &is_active);
	return 0;
}