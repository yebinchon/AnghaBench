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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct rt2x00_dev {int /*<<< orphan*/  csr_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBPCSR ; 
 int /*<<< orphan*/  BBPCSR_BUSY ; 
 int /*<<< orphan*/  BBPCSR_REGNUM ; 
 int /*<<< orphan*/  BBPCSR_VALUE ; 
 int /*<<< orphan*/  BBPCSR_WRITE_CONTROL ; 
 scalar_t__ FUNC0 (struct rt2x00_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,unsigned int const) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static u8 FUNC6(struct rt2x00_dev *rt2x00dev,
			     const unsigned int word)
{
	u32 reg;
	u8 value;

	FUNC1(&rt2x00dev->csr_mutex);

	/*
	 * Wait until the BBP becomes available, afterwards we
	 * can safely write the read request into the register.
	 * After the data has been written, we wait until hardware
	 * returns the correct value, if at any time the register
	 * doesn't become available in time, reg will be 0xffffffff
	 * which means we return 0xff to the caller.
	 */
	if (FUNC0(rt2x00dev, &reg)) {
		reg = 0;
		FUNC4(&reg, BBPCSR_REGNUM, word);
		FUNC4(&reg, BBPCSR_BUSY, 1);
		FUNC4(&reg, BBPCSR_WRITE_CONTROL, 0);

		FUNC5(rt2x00dev, BBPCSR, reg);

		FUNC0(rt2x00dev, &reg);
	}

	value = FUNC3(reg, BBPCSR_VALUE);

	FUNC2(&rt2x00dev->csr_mutex);

	return value;
}