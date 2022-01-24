#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  antenna_mask; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ieee80211_hw *hw, u32 *tx_ant,
			      u32 *rx_ant)
{
	struct mt76x02_dev *dev = hw->priv;

	FUNC0(&dev->mt76.mutex);
	*tx_ant = dev->mt76.antenna_mask;
	*rx_ant = dev->mt76.antenna_mask;
	FUNC1(&dev->mt76.mutex);

	return 0;
}