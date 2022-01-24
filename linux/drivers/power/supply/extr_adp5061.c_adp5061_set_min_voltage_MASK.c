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
struct adp5061_state {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADP5061_VOLTAGE_TH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ADP5061_VOLTAGE_TH_VTRK_DEAD_MSK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  adp5061_vmin ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct adp5061_state *st, int val)
{
	int index;

	/* Convert from uV to mV */
	val /= 1000;
	index = FUNC2(adp5061_vmin,
					FUNC1(adp5061_vmin),
					val);
	if (index < 0)
		return index;

	return FUNC3(st->regmap, ADP5061_VOLTAGE_TH,
				  ADP5061_VOLTAGE_TH_VTRK_DEAD_MSK,
				  FUNC0(index));
}