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
typedef  size_t u8 ;
struct zd_chip {size_t* pwr_int_values; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RF_RV_BITS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t,int) ; 
 int /*<<< orphan*/ * uw2453_txgain ; 
 int /*<<< orphan*/  FUNC3 (struct zd_chip*) ; 
 int FUNC4 (struct zd_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct zd_chip *chip, int channel)
{
	u8 int_value = chip->pwr_int_values[channel - 1];

	if (int_value >= FUNC0(uw2453_txgain)) {
		FUNC2(FUNC3(chip), "can't configure TX gain for "
			  "int value %x on channel %d\n", int_value, channel);
		return 0;
	}

	return FUNC4(chip,
		FUNC1(7, uw2453_txgain[int_value]), RF_RV_BITS);
}