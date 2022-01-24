#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct uniphier_tm_dev {TYPE_2__* data; TYPE_1__* dev; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct TYPE_4__ {scalar_t__ map_base; scalar_t__ block_base; int /*<<< orphan*/  tmod_setup_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ EMONREPEAT ; 
 int EMONREPEAT_ENDLESS ; 
 int EMONREPEAT_PERIOD ; 
 int EMONREPEAT_PERIOD_1000000 ; 
 scalar_t__ PVTCTLEN ; 
 int PVTCTLEN_EN ; 
 scalar_t__ PVTCTLMODE ; 
 int PVTCTLMODE_MASK ; 
 int PVTCTLMODE_TEMPMON ; 
 scalar_t__ PVTCTLSEL ; 
 int PVTCTLSEL_MASK ; 
 int PVTCTLSEL_MONITOR ; 
 scalar_t__ TMODCOEF ; 
 int TMODSETUP0_EN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int TMODSETUP1_EN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct regmap*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC7(struct uniphier_tm_dev *tdev)
{
	struct regmap *map = tdev->regmap;
	u32 val;
	u32 tmod_calib[2];
	int ret;

	/* stop PVT */
	FUNC6(map, tdev->data->block_base + PVTCTLEN,
			  PVTCTLEN_EN, 0);

	/*
	 * Since SoC has a calibrated value that was set in advance,
	 * TMODCOEF shows non-zero and PVT refers the value internally.
	 *
	 * If TMODCOEF shows zero, the boards don't have the calibrated
	 * value, and the driver has to set default value from DT.
	 */
	ret = FUNC4(map, tdev->data->map_base + TMODCOEF, &val);
	if (ret)
		return ret;
	if (!val) {
		/* look for the default values in DT */
		ret = FUNC3(tdev->dev->of_node,
						 "socionext,tmod-calibration",
						 tmod_calib,
						 FUNC0(tmod_calib));
		if (ret)
			return ret;

		FUNC5(map, tdev->data->tmod_setup_addr,
			TMODSETUP0_EN | FUNC1(tmod_calib[0]) |
			TMODSETUP1_EN | FUNC2(tmod_calib[1]));
	}

	/* select temperature mode */
	FUNC6(map, tdev->data->block_base + PVTCTLMODE,
			  PVTCTLMODE_MASK, PVTCTLMODE_TEMPMON);

	/* set monitoring period */
	FUNC6(map, tdev->data->block_base + EMONREPEAT,
			  EMONREPEAT_ENDLESS | EMONREPEAT_PERIOD,
			  EMONREPEAT_ENDLESS | EMONREPEAT_PERIOD_1000000);

	/* set monitor mode */
	FUNC6(map, tdev->data->map_base + PVTCTLSEL,
			  PVTCTLSEL_MASK, PVTCTLSEL_MONITOR);

	return 0;
}