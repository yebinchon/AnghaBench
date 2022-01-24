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
struct hfa384x {scalar_t__ dlstate; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HFA384x_DLSTATE_DISABLED ; 
 scalar_t__ HFA384x_DLSTATE_FLASHENABLED ; 
 int /*<<< orphan*/  HFA384x_PROGMODE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct hfa384x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(struct hfa384x *hw)
{
	/* Check that we're already in the download state */
	if (hw->dlstate != HFA384x_DLSTATE_FLASHENABLED)
		return -EINVAL;

	FUNC1("flashdl_enable\n");

	/* There isn't much we can do at this point, so I don't */
	/*  bother  w/ the return value */
	FUNC0(hw, HFA384x_PROGMODE_DISABLE, 0, 0, 0);
	hw->dlstate = HFA384x_DLSTATE_DISABLED;

	return 0;
}