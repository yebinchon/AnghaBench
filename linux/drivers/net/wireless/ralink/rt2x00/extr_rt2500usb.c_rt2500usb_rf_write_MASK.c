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
typedef  scalar_t__ u16 ;
struct rt2x00_dev {int /*<<< orphan*/  csr_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_CSR10 ; 
 int /*<<< orphan*/  PHY_CSR10_RF_BUSY ; 
 int /*<<< orphan*/  PHY_CSR10_RF_IF_SELECT ; 
 int /*<<< orphan*/  PHY_CSR10_RF_NUMBER_OF_BITS ; 
 int /*<<< orphan*/  PHY_CSR10_RF_VALUE ; 
 int /*<<< orphan*/  PHY_CSR9 ; 
 int /*<<< orphan*/  PHY_CSR9_RF_VALUE ; 
 scalar_t__ FUNC0 (struct rt2x00_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,unsigned int const,int const) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev,
			       const unsigned int word, const u32 value)
{
	u16 reg;

	FUNC1(&rt2x00dev->csr_mutex);

	/*
	 * Wait until the RF becomes available, afterwards we
	 * can safely write the new data into the register.
	 */
	if (FUNC0(rt2x00dev, &reg)) {
		reg = 0;
		FUNC5(&reg, PHY_CSR9_RF_VALUE, value);
		FUNC3(rt2x00dev, PHY_CSR9, reg);

		reg = 0;
		FUNC5(&reg, PHY_CSR10_RF_VALUE, value >> 16);
		FUNC5(&reg, PHY_CSR10_RF_NUMBER_OF_BITS, 20);
		FUNC5(&reg, PHY_CSR10_RF_IF_SELECT, 0);
		FUNC5(&reg, PHY_CSR10_RF_BUSY, 1);

		FUNC3(rt2x00dev, PHY_CSR10, reg);
		FUNC4(rt2x00dev, word, value);
	}

	FUNC2(&rt2x00dev->csr_mutex);
}