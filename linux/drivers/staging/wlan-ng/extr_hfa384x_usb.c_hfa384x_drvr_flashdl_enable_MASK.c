#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  offset; int /*<<< orphan*/  page; } ;
struct hfa384x {scalar_t__ dlstate; int /*<<< orphan*/  dltimeout; TYPE_1__ bufinfo; scalar_t__* port_enabled; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HFA384x_DLSTATE_DISABLED ; 
 scalar_t__ HFA384x_DLSTATE_FLASHENABLED ; 
 int HFA384x_PORTID_MAX ; 
 int /*<<< orphan*/  HFA384x_RID_DOWNLOADBUFFER ; 
 int /*<<< orphan*/  HFA384x_RID_MAXLOADTIME ; 
 int FUNC0 (struct hfa384x*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC1 (struct hfa384x*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(struct hfa384x *hw)
{
	int result = 0;
	int i;

	/* Check that a port isn't active */
	for (i = 0; i < HFA384x_PORTID_MAX; i++) {
		if (hw->port_enabled[i]) {
			FUNC3("called when port enabled.\n");
			return -EINVAL;
		}
	}

	/* Check that we're not already in a download state */
	if (hw->dlstate != HFA384x_DLSTATE_DISABLED)
		return -EINVAL;

	/* Retrieve the buffer loc&size and timeout */
	result = FUNC0(hw, HFA384x_RID_DOWNLOADBUFFER,
					&hw->bufinfo, sizeof(hw->bufinfo));
	if (result)
		return result;

	FUNC2(&hw->bufinfo.page);
	FUNC2(&hw->bufinfo.offset);
	FUNC2(&hw->bufinfo.len);
	result = FUNC1(hw, HFA384x_RID_MAXLOADTIME,
					  &hw->dltimeout);
	if (result)
		return result;

	FUNC2(&hw->dltimeout);

	FUNC3("flashdl_enable\n");

	hw->dlstate = HFA384x_DLSTATE_FLASHENABLED;

	return result;
}