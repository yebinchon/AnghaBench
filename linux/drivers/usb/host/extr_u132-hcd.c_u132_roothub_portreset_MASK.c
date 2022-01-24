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
typedef  int u32 ;
typedef  int u16 ;
struct u132 {int dummy; } ;
struct TYPE_2__ {int* portstatus; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PORT_RESET_HW_MSEC ; 
 int PORT_RESET_MSEC ; 
 int RH_PS_CCS ; 
 int RH_PS_PRS ; 
 int RH_PS_PRSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ roothub ; 
 scalar_t__ FUNC1 (int,int) ; 
 int FUNC2 (struct u132*,int,int*) ; 
 int FUNC3 (struct u132*,int,int) ; 

__attribute__((used)) static int FUNC4(struct u132 *u132, int port_index)
{
	int retval;
	u32 fmnumber;
	u16 now;
	u16 reset_done;
	retval = FUNC2(u132, fmnumber, &fmnumber);
	if (retval)
		return retval;
	now = fmnumber;
	reset_done = now + PORT_RESET_MSEC;
	do {
		u32 portstat;
		do {
			retval = FUNC2(u132,
				roothub.portstatus[port_index], &portstat);
			if (retval)
				return retval;
			if (RH_PS_PRS & portstat)
				continue;
			else
				break;
		} while (FUNC1(now, reset_done));
		if (RH_PS_PRS & portstat)
			return -ENODEV;
		if (RH_PS_CCS & portstat) {
			if (RH_PS_PRSC & portstat) {
				retval = FUNC3(u132,
					roothub.portstatus[port_index],
					RH_PS_PRSC);
				if (retval)
					return retval;
			}
		} else
			break;	/* start the next reset,
				sleep till it's probably done */
		retval = FUNC3(u132, roothub.portstatus[port_index],
			 RH_PS_PRS);
		if (retval)
			return retval;
		FUNC0(PORT_RESET_HW_MSEC);
		retval = FUNC2(u132, fmnumber, &fmnumber);
		if (retval)
			return retval;
		now = fmnumber;
	} while (FUNC1(now, reset_done));
	return 0;
}