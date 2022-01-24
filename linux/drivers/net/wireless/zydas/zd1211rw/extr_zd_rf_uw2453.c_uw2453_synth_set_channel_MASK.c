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
typedef  int /*<<< orphan*/  u32 ;
struct zd_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RF_RV_BITS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * uw2453_autocal_synth ; 
 int /*<<< orphan*/ * uw2453_std_synth ; 
 int /*<<< orphan*/ * uw2453_synth_divide ; 
 int FUNC1 (struct zd_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct zd_chip *chip, int channel,
	bool autocal)
{
	int r;
	int idx = channel - 1;
	u32 val;

	if (autocal)
		val = FUNC0(1, uw2453_autocal_synth[idx]);
	else
		val = FUNC0(1, uw2453_std_synth[idx]);

	r = FUNC1(chip, val, RF_RV_BITS);
	if (r)
		return r;

	return FUNC1(chip,
		FUNC0(2, uw2453_synth_divide[idx]), RF_RV_BITS);
}