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
union power_supply_propval {int intval; } ;
typedef  int u64 ;
typedef  unsigned long long u32 ;
struct da9150_fg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9150_QIF_IAVG ; 
 int /*<<< orphan*/  DA9150_QIF_IAVG_SIZE ; 
 int /*<<< orphan*/  DA9150_QIF_SD_GAIN ; 
 int /*<<< orphan*/  DA9150_QIF_SD_GAIN_SIZE ; 
 int /*<<< orphan*/  DA9150_QIF_SHUNT_VAL ; 
 int /*<<< orphan*/  DA9150_QIF_SHUNT_VAL_SIZE ; 
 unsigned long long FUNC0 (struct da9150_fg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct da9150_fg*) ; 
 int /*<<< orphan*/  FUNC2 (struct da9150_fg*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct da9150_fg *fg,
				 union power_supply_propval *val)
{
	u32 iavg, sd_gain, shunt_val;
	u64 div, res;

	FUNC2(fg);
	iavg = FUNC0(fg, DA9150_QIF_IAVG,
				   DA9150_QIF_IAVG_SIZE);
	shunt_val = FUNC0(fg, DA9150_QIF_SHUNT_VAL,
					DA9150_QIF_SHUNT_VAL_SIZE);
	sd_gain = FUNC0(fg, DA9150_QIF_SD_GAIN,
				      DA9150_QIF_SD_GAIN_SIZE);
	FUNC1(fg);

	div = (u64) (sd_gain * shunt_val * 65536ULL);
	FUNC3(div, 1000000);
	res = (u64) (iavg * 1000000ULL);
	FUNC3(res, div);

	val->intval = (int) res;

	return 0;
}