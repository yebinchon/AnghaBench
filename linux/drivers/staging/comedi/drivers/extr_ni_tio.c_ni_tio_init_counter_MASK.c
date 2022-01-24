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
struct ni_gpct_device {int** regs; } ;
struct ni_gpct {unsigned int counter_index; unsigned int chip_index; struct ni_gpct_device* counter_dev; } ;

/* Variables and functions */
 int GI_SYNC_GATE ; 
 size_t FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 size_t FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 size_t FUNC7 (unsigned int) ; 
 size_t FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 scalar_t__ FUNC10 (struct ni_gpct_device*) ; 
 scalar_t__ FUNC11 (struct ni_gpct_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct ni_gpct*) ; 
 int /*<<< orphan*/  FUNC13 (struct ni_gpct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ni_gpct*,int,size_t) ; 

void FUNC15(struct ni_gpct *counter)
{
	struct ni_gpct_device *counter_dev = counter->counter_dev;
	unsigned int cidx = counter->counter_index;
	unsigned int chip = counter->chip_index;

	FUNC12(counter);

	/* initialize counter registers */
	counter_dev->regs[chip][FUNC0(cidx)] = 0x0;
	FUNC14(counter, 0x0, FUNC0(cidx));

	FUNC13(counter, FUNC1(cidx),
			~0, GI_SYNC_GATE);

	FUNC13(counter, FUNC9(cidx), ~0, 0);

	counter_dev->regs[chip][FUNC7(cidx)] = 0x0;
	FUNC14(counter, 0x0, FUNC7(cidx));

	counter_dev->regs[chip][FUNC8(cidx)] = 0x0;
	FUNC14(counter, 0x0, FUNC8(cidx));

	FUNC13(counter, FUNC5(cidx), ~0, 0);

	if (FUNC10(counter_dev))
		FUNC13(counter, FUNC2(cidx), ~0, 0);

	if (FUNC11(counter_dev)) {
		counter_dev->regs[chip][FUNC4(cidx)] = 0x0;
		FUNC14(counter, 0x0, FUNC4(cidx));
	}

	FUNC13(counter, FUNC3(cidx), ~0, 0x0);

	FUNC13(counter, FUNC6(cidx), ~0, 0x0);
}