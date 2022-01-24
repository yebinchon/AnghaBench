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
typedef  int u8 ;
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
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev,
			       const unsigned int word, const u8 value)
{
	u32 reg;

	FUNC2(&rt2x00dev->csr_mutex);

	/*
	 * Wait until the RFCSR becomes available, afterwards we
	 * can safely write the new data into the register.
	 */
	switch (rt2x00dev->chip.rt) {
	case RT6352:
		if (FUNC1(rt2x00dev, &reg)) {
			reg = 0;
			FUNC5(&reg, RF_CSR_CFG_DATA_MT7620, value);
			FUNC5(&reg, RF_CSR_CFG_REGNUM_MT7620,
					   word);
			FUNC5(&reg, RF_CSR_CFG_WRITE_MT7620, 1);
			FUNC5(&reg, RF_CSR_CFG_BUSY_MT7620, 1);

			FUNC4(rt2x00dev, RF_CSR_CFG, reg);
		}
		break;

	default:
		if (FUNC0(rt2x00dev, &reg)) {
			reg = 0;
			FUNC5(&reg, RF_CSR_CFG_DATA, value);
			FUNC5(&reg, RF_CSR_CFG_REGNUM, word);
			FUNC5(&reg, RF_CSR_CFG_WRITE, 1);
			FUNC5(&reg, RF_CSR_CFG_BUSY, 1);

			FUNC4(rt2x00dev, RF_CSR_CFG, reg);
		}
		break;
	}

	FUNC3(&rt2x00dev->csr_mutex);
}