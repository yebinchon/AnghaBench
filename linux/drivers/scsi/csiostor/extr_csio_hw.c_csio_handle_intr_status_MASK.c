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
struct intr_info {int mask; scalar_t__ msg; scalar_t__ fatal; } ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,char*,scalar_t__,unsigned int) ; 
 unsigned int FUNC2 (struct csio_hw*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,unsigned int,unsigned int) ; 

int
FUNC4(struct csio_hw *hw, unsigned int reg,
				 const struct intr_info *acts)
{
	int fatal = 0;
	unsigned int mask = 0;
	unsigned int status = FUNC2(hw, reg);

	for ( ; acts->mask; ++acts) {
		if (!(status & acts->mask))
			continue;
		if (acts->fatal) {
			fatal++;
			FUNC0(hw, "Fatal %s (0x%x)\n",
				    acts->msg, status & acts->mask);
		} else if (acts->msg)
			FUNC1(hw, "%s (0x%x)\n",
				    acts->msg, status & acts->mask);
		mask |= acts->mask;
	}
	status &= mask;
	if (status)                           /* clear processed interrupts */
		FUNC3(hw, status, reg);
	return fatal;
}