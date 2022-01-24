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
struct TYPE_3__ {scalar_t__ sg_en; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; TYPE_1__ usb; struct ieee80211_hw* hw; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;
struct ieee80211_hw {int max_tx_fragments; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT76_STATE_INITIALIZED ; 
 int MT_TX_SG_MAX_SIZE ; 
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*) ; 
 int FUNC3 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mt76x02_dev *dev)
{
	struct ieee80211_hw *hw = dev->mt76.hw;
	int err;

	err = FUNC0(&dev->mt76);
	if (err < 0)
		goto out_err;

	err = FUNC3(dev, true);
	if (err < 0)
		goto out_err;

	err = FUNC1(dev);
	if (err < 0)
		goto out_err;

	/* check hw sg support in order to enable AMSDU */
	if (dev->mt76.usb.sg_en)
		hw->max_tx_fragments = MT_TX_SG_MAX_SIZE;
	else
		hw->max_tx_fragments = 1;

	FUNC4(MT76_STATE_INITIALIZED, &dev->mt76.state);

	return 0;

out_err:
	FUNC2(dev);
	return err;
}