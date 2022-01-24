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
struct nvec_chip {int i2c_addr; int /*<<< orphan*/  irq; scalar_t__ base; int /*<<< orphan*/  i2c_clk; int /*<<< orphan*/  rst; } ;

/* Variables and functions */
 scalar_t__ I2C_CNFG ; 
 int I2C_CNFG_DEBOUNCE_CNT_SHIFT ; 
 int I2C_CNFG_NEW_MASTER_SFM ; 
 int I2C_CNFG_PACKET_MODE_EN ; 
 scalar_t__ I2C_SL_ADDR1 ; 
 scalar_t__ I2C_SL_ADDR2 ; 
 scalar_t__ I2C_SL_CNFG ; 
 scalar_t__ I2C_SL_DELAY_COUNT ; 
 int I2C_SL_NEWSL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct nvec_chip *nvec)
{
	u32 val;

	FUNC0(nvec->i2c_clk);

	FUNC3(nvec->rst);
	FUNC5(2);
	FUNC4(nvec->rst);

	val = I2C_CNFG_NEW_MASTER_SFM | I2C_CNFG_PACKET_MODE_EN |
	    (0x2 << I2C_CNFG_DEBOUNCE_CNT_SHIFT);
	FUNC6(val, nvec->base + I2C_CNFG);

	FUNC1(nvec->i2c_clk, 8 * 80000);

	FUNC6(I2C_SL_NEWSL, nvec->base + I2C_SL_CNFG);
	FUNC6(0x1E, nvec->base + I2C_SL_DELAY_COUNT);

	FUNC6(nvec->i2c_addr >> 1, nvec->base + I2C_SL_ADDR1);
	FUNC6(0, nvec->base + I2C_SL_ADDR2);

	FUNC2(nvec->irq);
}