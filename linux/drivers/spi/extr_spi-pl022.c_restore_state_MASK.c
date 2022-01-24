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
struct pl022 {int /*<<< orphan*/  virtbase; TYPE_1__* vendor; struct chip_data* cur_chip; } ;
struct chip_data {int /*<<< orphan*/  cpsr; int /*<<< orphan*/  dmacr; int /*<<< orphan*/  cr1; int /*<<< orphan*/  cr0; } ;
struct TYPE_2__ {scalar_t__ extended_cr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLEAR_ALL_INTERRUPTS ; 
 int /*<<< orphan*/  DISABLE_ALL_INTERRUPTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct pl022 *pl022)
{
	struct chip_data *chip = pl022->cur_chip;

	if (pl022->vendor->extended_cr)
		FUNC6(chip->cr0, FUNC1(pl022->virtbase));
	else
		FUNC7(chip->cr0, FUNC1(pl022->virtbase));
	FUNC7(chip->cr1, FUNC2(pl022->virtbase));
	FUNC7(chip->dmacr, FUNC3(pl022->virtbase));
	FUNC7(chip->cpsr, FUNC0(pl022->virtbase));
	FUNC7(DISABLE_ALL_INTERRUPTS, FUNC5(pl022->virtbase));
	FUNC7(CLEAR_ALL_INTERRUPTS, FUNC4(pl022->virtbase));
}