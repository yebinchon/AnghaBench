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
struct mt76_reg_pair {int /*<<< orphan*/  value; int /*<<< orphan*/  reg; } ;
struct mt76x0_bbp_switch_item {int bw_band; struct mt76_reg_pair reg_pair; } ;
struct mt76x02_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mt76x0_bbp_switch_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int RF_BW_20 ; 
 int RF_G_BAND ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt76x0_bbp_init_tab ; 
 struct mt76x0_bbp_switch_item* mt76x0_bbp_switch_tab ; 
 int /*<<< orphan*/  mt76x0_dcoc_tab ; 
 int FUNC3 (struct mt76x02_dev*) ; 

__attribute__((used)) static int FUNC4(struct mt76x02_dev *dev)
{
	int ret, i;

	ret = FUNC3(dev);
	if (ret)
		return ret;

	FUNC1(dev, mt76x0_bbp_init_tab);

	for (i = 0; i < FUNC0(mt76x0_bbp_switch_tab); i++) {
		const struct mt76x0_bbp_switch_item *item = &mt76x0_bbp_switch_tab[i];
		const struct mt76_reg_pair *pair = &item->reg_pair;

		if (((RF_G_BAND | RF_BW_20) & item->bw_band) == (RF_G_BAND | RF_BW_20))
			FUNC2(dev, pair->reg, pair->value);
	}

	FUNC1(dev, mt76x0_dcoc_tab);

	return 0;
}