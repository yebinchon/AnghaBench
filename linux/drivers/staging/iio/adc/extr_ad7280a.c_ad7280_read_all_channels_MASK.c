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
struct ad7280_state {int ctrl_hb; } ;

/* Variables and functions */
 int AD7280A_CELL_VOLTAGE_1 ; 
 unsigned int AD7280A_CELL_VOLTAGE_6 ; 
 int /*<<< orphan*/  AD7280A_CONTROL_HB ; 
 int AD7280A_CTRL_HB_CONV_INPUT_ALL ; 
 int AD7280A_CTRL_HB_CONV_RES_READ_ALL ; 
 int AD7280A_CTRL_HB_CONV_START_CS ; 
 int /*<<< orphan*/  AD7280A_DEVADDR_MASTER ; 
 int /*<<< orphan*/  AD7280A_READ ; 
 int EIO ; 
 int FUNC0 (struct ad7280_state*,unsigned int*) ; 
 scalar_t__ FUNC1 (struct ad7280_state*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ad7280_state*) ; 
 int FUNC3 (struct ad7280_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct ad7280_state *st, unsigned int cnt,
				    unsigned int *array)
{
	int i, ret;
	unsigned int tmp, sum = 0;

	ret = FUNC3(st, AD7280A_DEVADDR_MASTER, AD7280A_READ, 1,
			   AD7280A_CELL_VOLTAGE_1 << 2);
	if (ret)
		return ret;

	ret = FUNC3(st, AD7280A_DEVADDR_MASTER, AD7280A_CONTROL_HB, 1,
			   AD7280A_CTRL_HB_CONV_INPUT_ALL |
			   AD7280A_CTRL_HB_CONV_RES_READ_ALL |
			   AD7280A_CTRL_HB_CONV_START_CS |
			   st->ctrl_hb);
	if (ret)
		return ret;

	FUNC2(st);

	for (i = 0; i < cnt; i++) {
		ret = FUNC0(st, &tmp);
		if (ret)
			return ret;

		if (FUNC1(st, tmp))
			return -EIO;

		if (array)
			array[i] = tmp;
		/* only sum cell voltages */
		if (((tmp >> 23) & 0xF) <= AD7280A_CELL_VOLTAGE_6)
			sum += ((tmp >> 11) & 0xFFF);
	}

	return sum;
}