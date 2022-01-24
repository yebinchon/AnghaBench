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
struct rockchip_efuse_chip {int /*<<< orphan*/  clk; scalar_t__ base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ REG_EFUSE_CTRL ; 
 scalar_t__ REG_EFUSE_DOUT ; 
 int RK3288_A_MASK ; 
 int RK3288_A_SHIFT ; 
 int RK3288_CSB ; 
 int RK3288_LOAD ; 
 int RK3288_PGENB ; 
 int RK3288_STROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(void *context, unsigned int offset,
				      void *val, size_t bytes)
{
	struct rockchip_efuse_chip *efuse = context;
	u8 *buf = val;
	int ret;

	ret = FUNC1(efuse->clk);
	if (ret < 0) {
		FUNC2(efuse->dev, "failed to prepare/enable efuse clk\n");
		return ret;
	}

	FUNC6(RK3288_LOAD | RK3288_PGENB, efuse->base + REG_EFUSE_CTRL);
	FUNC5(1);
	while (bytes--) {
		FUNC6(FUNC4(efuse->base + REG_EFUSE_CTRL) &
			     (~(RK3288_A_MASK << RK3288_A_SHIFT)),
			     efuse->base + REG_EFUSE_CTRL);
		FUNC6(FUNC4(efuse->base + REG_EFUSE_CTRL) |
			     ((offset++ & RK3288_A_MASK) << RK3288_A_SHIFT),
			     efuse->base + REG_EFUSE_CTRL);
		FUNC5(1);
		FUNC6(FUNC4(efuse->base + REG_EFUSE_CTRL) |
			     RK3288_STROBE, efuse->base + REG_EFUSE_CTRL);
		FUNC5(1);
		*buf++ = FUNC3(efuse->base + REG_EFUSE_DOUT);
		FUNC6(FUNC4(efuse->base + REG_EFUSE_CTRL) &
		       (~RK3288_STROBE), efuse->base + REG_EFUSE_CTRL);
		FUNC5(1);
	}

	/* Switch to standby mode */
	FUNC6(RK3288_PGENB | RK3288_CSB, efuse->base + REG_EFUSE_CTRL);

	FUNC0(efuse->clk);

	return 0;
}