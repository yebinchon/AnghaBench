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
struct mt76x02_dev {int dummy; } ;
typedef  int /*<<< orphan*/  s8 ;
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 int /*<<< orphan*/  MT_TX_ALC_CFG_1 ; 
 int /*<<< orphan*/  MT_TX_ALC_CFG_1_TEMP_COMP ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mt76x02_dev*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void FUNC4(struct mt76x02_dev *dev)
{
	s8 target_power, target_pa_power;
	u8 tssi_info[3], tx_mode;
	s16 ltssi;
	s8 val;

	if (FUNC3(dev, &ltssi, tssi_info) < 0)
		return;

	tx_mode = tssi_info[0] & 0x7;
	if (FUNC2(dev, tx_mode, tssi_info,
					&target_power, &target_pa_power) < 0)
		return;

	val = FUNC1(dev, tx_mode, target_power,
					 target_pa_power, ltssi);
	FUNC0(dev, MT_TX_ALC_CFG_1, MT_TX_ALC_CFG_1_TEMP_COMP, val);
}