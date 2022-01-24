#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  napi; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  OCTEON_CN68XX ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cvm_oct_device ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* oct_rx_group ; 
 int pow_receive_groups ; 

void FUNC8(void)
{
	int i;

	for (i = 0; i < FUNC0(oct_rx_group); i++) {
		if (!(pow_receive_groups & FUNC1(i)))
			continue;

		/* Disable POW interrupt */
		if (FUNC4(OCTEON_CN68XX))
			FUNC5(FUNC3(i), 0);
		else
			FUNC5(FUNC2(i), 0);

		/* Free the interrupt handler */
		FUNC6(oct_rx_group[i].irq, cvm_oct_device);

		FUNC7(&oct_rx_group[i].napi);
	}
}