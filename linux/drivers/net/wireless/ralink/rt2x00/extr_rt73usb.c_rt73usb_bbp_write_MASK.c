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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct rt2x00_dev {int /*<<< orphan*/  csr_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_CSR3 ; 
 int /*<<< orphan*/  PHY_CSR3_BUSY ; 
 int /*<<< orphan*/  PHY_CSR3_READ_CONTROL ; 
 int /*<<< orphan*/  PHY_CSR3_REGNUM ; 
 int /*<<< orphan*/  PHY_CSR3_VALUE ; 
 scalar_t__ FUNC0 (struct rt2x00_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct rt2x00_dev *rt2x00dev,
			      const unsigned int word, const u8 value)
{
	u32 reg;

	FUNC1(&rt2x00dev->csr_mutex);

	/*
	 * Wait until the BBP becomes available, afterwards we
	 * can safely write the new data into the register.
	 */
	if (FUNC0(rt2x00dev, &reg)) {
		reg = 0;
		FUNC3(&reg, PHY_CSR3_VALUE, value);
		FUNC3(&reg, PHY_CSR3_REGNUM, word);
		FUNC3(&reg, PHY_CSR3_BUSY, 1);
		FUNC3(&reg, PHY_CSR3_READ_CONTROL, 0);

		FUNC4(rt2x00dev, PHY_CSR3, reg);
	}

	FUNC2(&rt2x00dev->csr_mutex);
}