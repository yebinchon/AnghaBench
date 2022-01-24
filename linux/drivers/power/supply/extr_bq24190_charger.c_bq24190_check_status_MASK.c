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
struct bq24190_dev_info {int f_reg; int ss_reg; int /*<<< orphan*/  dev; scalar_t__ battery; scalar_t__ charger; int /*<<< orphan*/  f_reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BQ24190_REG_F ; 
 int BQ24190_REG_F_BAT_FAULT_MASK ; 
 int BQ24190_REG_F_BOOST_FAULT_MASK ; 
 int BQ24190_REG_F_CHRG_FAULT_MASK ; 
 int BQ24190_REG_F_CHRG_FAULT_SHIFT ; 
 int BQ24190_REG_F_NTC_FAULT_MASK ; 
 int /*<<< orphan*/  BQ24190_REG_ISC ; 
 int /*<<< orphan*/  BQ24190_REG_ISC_EN_HIZ_MASK ; 
 int /*<<< orphan*/  BQ24190_REG_ISC_EN_HIZ_SHIFT ; 
 int /*<<< orphan*/  BQ24190_REG_SS ; 
 int BQ24190_REG_SS_CHRG_STAT_MASK ; 
 int BQ24190_REG_SS_PG_STAT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct bq24190_dev_info*,int) ; 
 int FUNC1 (struct bq24190_dev_info*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct bq24190_dev_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct bq24190_dev_info *bdi)
{
	const u8 battery_mask_ss = BQ24190_REG_SS_CHRG_STAT_MASK;
	const u8 battery_mask_f = BQ24190_REG_F_BAT_FAULT_MASK
				| BQ24190_REG_F_NTC_FAULT_MASK;
	bool alert_charger = false, alert_battery = false;
	u8 ss_reg = 0, f_reg = 0;
	int i, ret;

	ret = FUNC1(bdi, BQ24190_REG_SS, &ss_reg);
	if (ret < 0) {
		FUNC4(bdi->dev, "Can't read SS reg: %d\n", ret);
		return;
	}

	i = 0;
	do {
		ret = FUNC1(bdi, BQ24190_REG_F, &f_reg);
		if (ret < 0) {
			FUNC4(bdi->dev, "Can't read F reg: %d\n", ret);
			return;
		}
	} while (f_reg && ++i < 2);

	/* ignore over/under voltage fault after disconnect */
	if (f_reg == (1 << BQ24190_REG_F_CHRG_FAULT_SHIFT) &&
	    !(ss_reg & BQ24190_REG_SS_PG_STAT_MASK))
		f_reg = 0;

	if (f_reg != bdi->f_reg) {
		FUNC5(bdi->dev,
			"Fault: boost %d, charge %d, battery %d, ntc %d\n",
			!!(f_reg & BQ24190_REG_F_BOOST_FAULT_MASK),
			!!(f_reg & BQ24190_REG_F_CHRG_FAULT_MASK),
			!!(f_reg & BQ24190_REG_F_BAT_FAULT_MASK),
			!!(f_reg & BQ24190_REG_F_NTC_FAULT_MASK));

		FUNC6(&bdi->f_reg_lock);
		if ((bdi->f_reg & battery_mask_f) != (f_reg & battery_mask_f))
			alert_battery = true;
		if ((bdi->f_reg & ~battery_mask_f) != (f_reg & ~battery_mask_f))
			alert_charger = true;
		bdi->f_reg = f_reg;
		FUNC7(&bdi->f_reg_lock);
	}

	if (ss_reg != bdi->ss_reg) {
		/*
		 * The device is in host mode so when PG_STAT goes from 1->0
		 * (i.e., power removed) HIZ needs to be disabled.
		 */
		if ((bdi->ss_reg & BQ24190_REG_SS_PG_STAT_MASK) &&
				!(ss_reg & BQ24190_REG_SS_PG_STAT_MASK)) {
			ret = FUNC2(bdi, BQ24190_REG_ISC,
					BQ24190_REG_ISC_EN_HIZ_MASK,
					BQ24190_REG_ISC_EN_HIZ_SHIFT,
					0);
			if (ret < 0)
				FUNC4(bdi->dev, "Can't access ISC reg: %d\n",
					ret);
		}

		if ((bdi->ss_reg & battery_mask_ss) != (ss_reg & battery_mask_ss))
			alert_battery = true;
		if ((bdi->ss_reg & ~battery_mask_ss) != (ss_reg & ~battery_mask_ss))
			alert_charger = true;
		bdi->ss_reg = ss_reg;
	}

	if (alert_charger || alert_battery) {
		FUNC8(bdi->charger);
		FUNC0(bdi, ss_reg);
	}
	if (alert_battery && bdi->battery)
		FUNC8(bdi->battery);

	FUNC3(bdi->dev, "ss_reg: 0x%02x, f_reg: 0x%02x\n", ss_reg, f_reg);
}