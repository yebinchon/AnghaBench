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
struct TYPE_2__ {scalar_t__ txfflsh; scalar_t__ rxfflsh; } ;
union cvmx_usbcx_grstctl {TYPE_1__ s; int /*<<< orphan*/  u32; } ;
typedef  int u64 ;
struct octeon_hcd {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_hcd*,int) ; 
 scalar_t__ octeon_get_clock_rate ; 

__attribute__((used)) static int FUNC4(struct octeon_hcd *usb, int fflsh_type)
{
	int result;
	u64 address = FUNC0(usb->index);
	u64 done = FUNC2() + 100 *
		   (u64)octeon_get_clock_rate / 1000000;
	union cvmx_usbcx_grstctl c;

	while (1) {
		c.u32 = FUNC3(usb, address);
		if (fflsh_type == 0 && c.s.txfflsh == 0) {
			result = 0;
			break;
		} else if (fflsh_type == 1 && c.s.rxfflsh == 0) {
			result = 0;
			break;
		} else if (FUNC2() > done) {
			result = -1;
			break;
		}

		FUNC1(100);
	}
	return result;
}