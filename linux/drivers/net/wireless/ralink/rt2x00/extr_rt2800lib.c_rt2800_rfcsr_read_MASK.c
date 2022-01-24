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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int rt; } ;
struct rt2x00_dev {int /*<<< orphan*/  csr_mutex; TYPE_1__ chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  RF_CSR_CFG ; 
 int /*<<< orphan*/  RF_CSR_CFG_BUSY ; 
 int /*<<< orphan*/  RF_CSR_CFG_BUSY_MT7620 ; 
 int /*<<< orphan*/  RF_CSR_CFG_DATA ; 
 int /*<<< orphan*/  RF_CSR_CFG_DATA_MT7620 ; 
 int /*<<< orphan*/  RF_CSR_CFG_REGNUM ; 
 int /*<<< orphan*/  RF_CSR_CFG_REGNUM_MT7620 ; 
 int /*<<< orphan*/  RF_CSR_CFG_WRITE ; 
 int /*<<< orphan*/  RF_CSR_CFG_WRITE_MT7620 ; 
#define  RT6352 128 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int const) ; 

__attribute__((used)) static u8 FUNC7(struct rt2x00_dev *rt2x00dev,
			    const unsigned int word)
{
	u32 reg;
	u8 value;

	FUNC2(&rt2x00dev->csr_mutex);

	/*
	 * Wait until the RFCSR becomes available, afterwards we
	 * can safely write the read request into the register.
	 * After the data has been written, we wait until hardware
	 * returns the correct value, if at any time the register
	 * doesn't become available in time, reg will be 0xffffffff
	 * which means we return 0xff to the caller.
	 */
	switch (rt2x00dev->chip.rt) {
	case RT6352:
		if (FUNC1(rt2x00dev, &reg)) {
			reg = 0;
			FUNC6(&reg, RF_CSR_CFG_REGNUM_MT7620,
					   word);
			FUNC6(&reg, RF_CSR_CFG_WRITE_MT7620, 0);
			FUNC6(&reg, RF_CSR_CFG_BUSY_MT7620, 1);

			FUNC4(rt2x00dev, RF_CSR_CFG, reg);

			FUNC1(rt2x00dev, &reg);
		}

		value = FUNC5(reg, RF_CSR_CFG_DATA_MT7620);
		break;

	default:
		if (FUNC0(rt2x00dev, &reg)) {
			reg = 0;
			FUNC6(&reg, RF_CSR_CFG_REGNUM, word);
			FUNC6(&reg, RF_CSR_CFG_WRITE, 0);
			FUNC6(&reg, RF_CSR_CFG_BUSY, 1);

			FUNC4(rt2x00dev, RF_CSR_CFG, reg);

			FUNC0(rt2x00dev, &reg);
		}

		value = FUNC5(reg, RF_CSR_CFG_DATA);
		break;
	}

	FUNC3(&rt2x00dev->csr_mutex);

	return value;
}