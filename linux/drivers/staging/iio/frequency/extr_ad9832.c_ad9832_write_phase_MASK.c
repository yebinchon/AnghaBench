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
struct ad9832_state {int /*<<< orphan*/  phase_msg; int /*<<< orphan*/  spi; void** phase_data; } ;

/* Variables and functions */
 unsigned long AD9832_CMD_PHA16BITSW ; 
 unsigned long AD9832_CMD_PHA8BITSW ; 
 int /*<<< orphan*/  AD9832_PHASE_BITS ; 
 unsigned long ADD_SHIFT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long CMD_SHIFT ; 
 int EINVAL ; 
 void* FUNC1 (unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ad9832_state *st,
			      unsigned long addr, unsigned long phase)
{
	if (phase > FUNC0(AD9832_PHASE_BITS))
		return -EINVAL;

	st->phase_data[0] = FUNC1((AD9832_CMD_PHA8BITSW << CMD_SHIFT) |
					(addr << ADD_SHIFT) |
					((phase >> 8) & 0xFF));
	st->phase_data[1] = FUNC1((AD9832_CMD_PHA16BITSW << CMD_SHIFT) |
					((addr - 1) << ADD_SHIFT) |
					(phase & 0xFF));

	return FUNC2(st->spi, &st->phase_msg);
}