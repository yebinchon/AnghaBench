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
typedef  int /*<<< orphan*/  u8 ;
struct ad5933_state {int settling_cycles; int freq_points; int /*<<< orphan*/  client; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  AD5933_REG_FREQ_INC ; 
 int /*<<< orphan*/  AD5933_REG_FREQ_START ; 
 int /*<<< orphan*/  AD5933_REG_INC_NUM ; 
 int /*<<< orphan*/  AD5933_REG_SETTLING_CYCLES ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ad5933_state*) ; 
 int FUNC2 (struct ad5933_state*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ad5933_state *st)
{
	__be16 dat;
	int ret;

	ret = FUNC1(st);
	if (ret < 0)
		return ret;

	ret = FUNC2(st, AD5933_REG_FREQ_START, 10000);
	if (ret < 0)
		return ret;

	ret = FUNC2(st, AD5933_REG_FREQ_INC, 200);
	if (ret < 0)
		return ret;

	st->settling_cycles = 10;
	dat = FUNC3(st->settling_cycles);

	ret = FUNC0(st->client,
			       AD5933_REG_SETTLING_CYCLES,
			       2, (u8 *)&dat);
	if (ret < 0)
		return ret;

	st->freq_points = 100;
	dat = FUNC3(st->freq_points);

	return FUNC0(st->client, AD5933_REG_INC_NUM, 2, (u8 *)&dat);
}