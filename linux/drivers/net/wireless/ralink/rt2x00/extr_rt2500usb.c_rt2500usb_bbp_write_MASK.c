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
typedef  unsigned int u8 ;
typedef  scalar_t__ u16 ;
struct rt2x00_dev {int /*<<< orphan*/  csr_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_CSR7 ; 
 int /*<<< orphan*/  PHY_CSR7_DATA ; 
 int /*<<< orphan*/  PHY_CSR7_READ_CONTROL ; 
 int /*<<< orphan*/  PHY_CSR7_REG_ID ; 
 scalar_t__ FUNC0 (struct rt2x00_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,unsigned int const) ; 

__attribute__((used)) static void FUNC5(struct rt2x00_dev *rt2x00dev,
				const unsigned int word, const u8 value)
{
	u16 reg;

	FUNC1(&rt2x00dev->csr_mutex);

	/*
	 * Wait until the BBP becomes available, afterwards we
	 * can safely write the new data into the register.
	 */
	if (FUNC0(rt2x00dev, &reg)) {
		reg = 0;
		FUNC4(&reg, PHY_CSR7_DATA, value);
		FUNC4(&reg, PHY_CSR7_REG_ID, word);
		FUNC4(&reg, PHY_CSR7_READ_CONTROL, 0);

		FUNC3(rt2x00dev, PHY_CSR7, reg);
	}

	FUNC2(&rt2x00dev->csr_mutex);
}