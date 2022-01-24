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
struct ad7280_state {int ctrl_lb; int ctrl_hb; } ;

/* Variables and functions */
 int AD7280A_CONTROL_HB ; 
 int AD7280A_CONTROL_LB ; 
 int AD7280A_CTRL_HB_PWRDN_SW ; 
 int AD7280A_CTRL_LB_DAISY_CHAIN_RB_EN ; 
 int AD7280A_CTRL_LB_LOCK_DEV_ADDR ; 
 int AD7280A_CTRL_LB_MUST_SET ; 
 int AD7280A_CTRL_LB_SWRST ; 
 int /*<<< orphan*/  AD7280A_DEVADDR_MASTER ; 
 unsigned int AD7280A_MAX_CHAIN ; 
 int AD7280A_READ ; 
 int EFAULT ; 
 int EIO ; 
 int FUNC0 (struct ad7280_state*,unsigned int*) ; 
 scalar_t__ FUNC1 (struct ad7280_state*,unsigned int) ; 
 int FUNC2 (struct ad7280_state*,int /*<<< orphan*/ ,int,int,int) ; 
 unsigned int FUNC3 (unsigned int) ; 

__attribute__((used)) static int FUNC4(struct ad7280_state *st)
{
	unsigned int val, n;
	int ret;

	ret = FUNC2(st, AD7280A_DEVADDR_MASTER, AD7280A_CONTROL_LB, 1,
			   AD7280A_CTRL_LB_DAISY_CHAIN_RB_EN |
			   AD7280A_CTRL_LB_LOCK_DEV_ADDR |
			   AD7280A_CTRL_LB_MUST_SET |
			   AD7280A_CTRL_LB_SWRST |
			   st->ctrl_lb);
	if (ret)
		return ret;

	ret = FUNC2(st, AD7280A_DEVADDR_MASTER, AD7280A_CONTROL_LB, 1,
			   AD7280A_CTRL_LB_DAISY_CHAIN_RB_EN |
			   AD7280A_CTRL_LB_LOCK_DEV_ADDR |
			   AD7280A_CTRL_LB_MUST_SET |
			   st->ctrl_lb);
	if (ret)
		goto error_power_down;

	ret = FUNC2(st, AD7280A_DEVADDR_MASTER, AD7280A_READ, 1,
			   AD7280A_CONTROL_LB << 2);
	if (ret)
		goto error_power_down;

	for (n = 0; n <= AD7280A_MAX_CHAIN; n++) {
		ret = FUNC0(st, &val);
		if (ret)
			goto error_power_down;

		if (val == 0)
			return n - 1;

		if (FUNC1(st, val)) {
			ret = -EIO;
			goto error_power_down;
		}

		if (n != FUNC3(val >> 27)) {
			ret = -EIO;
			goto error_power_down;
		}
	}
	ret = -EFAULT;

error_power_down:
	FUNC2(st, AD7280A_DEVADDR_MASTER, AD7280A_CONTROL_HB, 1,
		     AD7280A_CTRL_HB_PWRDN_SW | st->ctrl_hb);

	return ret;
}