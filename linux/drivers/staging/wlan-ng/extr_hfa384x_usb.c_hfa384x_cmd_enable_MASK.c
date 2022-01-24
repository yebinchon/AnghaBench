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
typedef  int /*<<< orphan*/  u16 ;
struct hfa384x_metacmd {int cmd; scalar_t__ parm2; scalar_t__ parm1; scalar_t__ parm0; } ;
struct hfa384x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFA384x_CMDCODE_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hfa384x*,struct hfa384x_metacmd*) ; 

int FUNC3(struct hfa384x *hw, u16 macport)
{
	struct hfa384x_metacmd cmd;

	cmd.cmd = FUNC0(HFA384x_CMDCODE_ENABLE) |
	    FUNC1(macport);
	cmd.parm0 = 0;
	cmd.parm1 = 0;
	cmd.parm2 = 0;

	return FUNC2(hw, &cmd);
}