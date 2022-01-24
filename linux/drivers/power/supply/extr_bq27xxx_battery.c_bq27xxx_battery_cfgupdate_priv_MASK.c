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
typedef  int /*<<< orphan*/  u16 ;
struct bq27xxx_device_info {scalar_t__ chip; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BQ27425 ; 
 int BQ27XXX_FLAG_CFGUP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BQ27XXX_REG_CTRL ; 
 int /*<<< orphan*/  BQ27XXX_REG_FLAGS ; 
 int /*<<< orphan*/  BQ27XXX_SET_CFGUPDATE ; 
 int /*<<< orphan*/  BQ27XXX_SOFT_RESET ; 
 int EINVAL ; 
 int FUNC1 (struct bq27xxx_device_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bq27xxx_device_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int const) ; 

__attribute__((used)) static int FUNC5(struct bq27xxx_device_info *di, bool active)
{
	const int limit = 100;
	u16 cmd = active ? BQ27XXX_SET_CFGUPDATE : BQ27XXX_SOFT_RESET;
	int ret, try = limit;

	ret = FUNC2(di, BQ27XXX_REG_CTRL, cmd, false);
	if (ret < 0)
		return ret;

	do {
		FUNC0(25);
		ret = FUNC1(di, BQ27XXX_REG_FLAGS, false);
		if (ret < 0)
			return ret;
	} while (!!(ret & BQ27XXX_FLAG_CFGUP) != active && --try);

	if (!try && di->chip != BQ27425) { // 425 has a bug
		FUNC3(di->dev, "timed out waiting for cfgupdate flag %d\n", active);
		return -EINVAL;
	}

	if (limit - try > 3)
		FUNC4(di->dev, "cfgupdate %d, retries %d\n", active, limit - try);

	return 0;
}