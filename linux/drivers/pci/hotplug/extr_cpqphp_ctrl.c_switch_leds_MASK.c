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
typedef  int u32 ;
struct controller {scalar_t__ hpc_reg; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ LED_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct controller *ctrl, const int num_of_slots,
			u32 *work_LED, const int direction)
{
	int loop;

	for (loop = 0; loop < num_of_slots; loop++) {
		if (direction)
			*work_LED = *work_LED >> 1;
		else
			*work_LED = *work_LED << 1;
		FUNC3(*work_LED, ctrl->hpc_reg + LED_CONTROL);

		FUNC1(ctrl);

		/* Wait for SOGO interrupt */
		FUNC2(ctrl);

		/* Get ready for next iteration */
		FUNC0((2*HZ)/10);
	}
}