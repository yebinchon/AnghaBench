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
typedef  int u8 ;
struct bbc_i2c_bus {int waiting; int /*<<< orphan*/  wq; scalar_t__ i2c_control_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int I2C_PCF_PIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 long FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct bbc_i2c_bus *bp, u8 *status)
{
	FUNC0(wait, current);
	int limit = 32;
	int ret = 1;

	bp->waiting = 1;
	FUNC1(&bp->wq, &wait);
	while (limit-- > 0) {
		long val;

		val = FUNC5(
				bp->wq,
				(((*status = FUNC3(bp->i2c_control_regs + 0))
				  & I2C_PCF_PIN) == 0),
				FUNC2(250));
		if (val > 0) {
			ret = 0;
			break;
		}
	}
	FUNC4(&bp->wq, &wait);
	bp->waiting = 0;

	return ret;
}