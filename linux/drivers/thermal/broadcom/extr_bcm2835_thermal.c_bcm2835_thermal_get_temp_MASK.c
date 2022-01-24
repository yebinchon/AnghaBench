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
struct bcm2835_thermal_data {int /*<<< orphan*/  tz; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ BCM2835_TS_TSENSSTAT ; 
 int BCM2835_TS_TSENSSTAT_DATA_MASK ; 
 int BCM2835_TS_TSENSSTAT_VALID ; 
 int EIO ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *d, int *temp)
{
	struct bcm2835_thermal_data *data = d;
	u32 val = FUNC1(data->regs + BCM2835_TS_TSENSSTAT);

	if (!(val & BCM2835_TS_TSENSSTAT_VALID))
		return -EIO;

	val &= BCM2835_TS_TSENSSTAT_DATA_MASK;

	*temp = FUNC0(
		val,
		FUNC2(data->tz),
		FUNC3(data->tz));

	return 0;
}