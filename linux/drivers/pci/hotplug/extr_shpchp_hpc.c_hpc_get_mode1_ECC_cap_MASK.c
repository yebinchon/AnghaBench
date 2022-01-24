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
typedef  int u8 ;
typedef  int u16 ;
struct slot {struct controller* ctrl; } ;
struct controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROG_INTERFACE ; 
 int /*<<< orphan*/  SEC_BUS_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,char*,int) ; 
 int FUNC1 (struct controller*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct controller*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct slot *slot, u8 *mode)
{
	int retval = 0;
	struct controller *ctrl = slot->ctrl;
	u16 sec_bus_status = FUNC2(ctrl, SEC_BUS_CONFIG);
	u8 pi = FUNC1(ctrl, PROG_INTERFACE);

	if (pi == 2) {
		*mode = (sec_bus_status & 0x0100) >> 8;
	} else {
		retval = -1;
	}

	FUNC0(ctrl, "Mode 1 ECC cap = %d\n", *mode);
	return retval;
}