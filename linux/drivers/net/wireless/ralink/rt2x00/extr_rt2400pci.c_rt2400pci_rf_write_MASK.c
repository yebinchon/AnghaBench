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
struct rt2x00_dev {int /*<<< orphan*/  csr_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  RFCSR ; 
 int /*<<< orphan*/  RFCSR_BUSY ; 
 int /*<<< orphan*/  RFCSR_IF_SELECT ; 
 int /*<<< orphan*/  RFCSR_NUMBER_OF_BITS ; 
 int /*<<< orphan*/  RFCSR_VALUE ; 
 scalar_t__ FUNC0 (struct rt2x00_dev*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,unsigned int const,int const) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev,
			       const unsigned int word, const u32 value)
{
	u32 reg;

	FUNC1(&rt2x00dev->csr_mutex);

	/*
	 * Wait until the RF becomes available, afterwards we
	 * can safely write the new data into the register.
	 */
	if (FUNC0(rt2x00dev, &reg)) {
		reg = 0;
		FUNC4(&reg, RFCSR_VALUE, value);
		FUNC4(&reg, RFCSR_NUMBER_OF_BITS, 20);
		FUNC4(&reg, RFCSR_IF_SELECT, 0);
		FUNC4(&reg, RFCSR_BUSY, 1);

		FUNC5(rt2x00dev, RFCSR, reg);
		FUNC3(rt2x00dev, word, value);
	}

	FUNC2(&rt2x00dev->csr_mutex);
}