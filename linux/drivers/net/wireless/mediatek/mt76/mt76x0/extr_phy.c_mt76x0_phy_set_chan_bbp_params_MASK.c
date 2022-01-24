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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct mt76_reg_pair {scalar_t__ reg; int /*<<< orphan*/  value; } ;
struct mt76x0_bbp_switch_item {int bw_band; struct mt76_reg_pair reg_pair; } ;
struct TYPE_3__ {int lna_gain; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct mt76x02_dev {TYPE_2__ cal; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGC ; 
 int FUNC0 (struct mt76x0_bbp_switch_item*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_BBP_AGC_GAIN ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct mt76x0_bbp_switch_item* mt76x0_bbp_switch_tab ; 

__attribute__((used)) static void
FUNC5(struct mt76x02_dev *dev, u16 rf_bw_band)
{
	int i;

	for (i = 0; i < FUNC0(mt76x0_bbp_switch_tab); i++) {
		const struct mt76x0_bbp_switch_item *item = &mt76x0_bbp_switch_tab[i];
		const struct mt76_reg_pair *pair = &item->reg_pair;

		if ((rf_bw_band & item->bw_band) != rf_bw_band)
			continue;

		if (pair->reg == FUNC3(AGC, 8)) {
			u32 val = pair->value;
			u8 gain;

			gain = FUNC1(MT_BBP_AGC_GAIN, val);
			gain -= dev->cal.rx.lna_gain * 2;
			val &= ~MT_BBP_AGC_GAIN;
			val |= FUNC2(MT_BBP_AGC_GAIN, gain);
			FUNC4(dev, pair->reg, val);
		} else {
			FUNC4(dev, pair->reg, pair->value);
		}
	}
}