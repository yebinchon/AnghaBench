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
struct st_pio_control {scalar_t__ od; scalar_t__ pu; scalar_t__ oe; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned int*) ; 

__attribute__((used)) static void FUNC5(struct st_pio_control *pc,
	int pin, unsigned long *config)
{
	unsigned int oe_value, pu_value, od_value;

	if (pc->oe) {
		FUNC4(pc->oe, &oe_value);
		if (oe_value & FUNC0(pin))
			FUNC2(*config);
	}

	if (pc->pu) {
		FUNC4(pc->pu, &pu_value);
		if (pu_value & FUNC0(pin))
			FUNC3(*config);
	}

	if (pc->od) {
		FUNC4(pc->od, &od_value);
		if (od_value & FUNC0(pin))
			FUNC1(*config);
	}
}