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
struct mt7601u_dev {int /*<<< orphan*/  stat_wq; int /*<<< orphan*/  tx_skb_done; int /*<<< orphan*/  avg_ampdu_len; int /*<<< orphan*/  con_mon_lock; int /*<<< orphan*/  mac_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  hw_atomic_mutex; int /*<<< orphan*/  reg_atomic_mutex; int /*<<< orphan*/  vendor_req_mutex; struct ieee80211_hw* hw; struct device* dev; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WQ_UNBOUND ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct ieee80211_hw* FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  mt7601u_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct mt7601u_dev *FUNC7(struct device *pdev)
{
	struct ieee80211_hw *hw;
	struct mt7601u_dev *dev;

	hw = FUNC2(sizeof(*dev), &mt7601u_ops);
	if (!hw)
		return NULL;

	dev = hw->priv;
	dev->dev = pdev;
	dev->hw = hw;
	FUNC4(&dev->vendor_req_mutex);
	FUNC4(&dev->reg_atomic_mutex);
	FUNC4(&dev->hw_atomic_mutex);
	FUNC4(&dev->mutex);
	FUNC6(&dev->tx_lock);
	FUNC6(&dev->rx_lock);
	FUNC6(&dev->lock);
	FUNC6(&dev->mac_lock);
	FUNC6(&dev->con_mon_lock);
	FUNC1(&dev->avg_ampdu_len, 1);
	FUNC5(&dev->tx_skb_done);

	dev->stat_wq = FUNC0("mt7601u", WQ_UNBOUND, 0);
	if (!dev->stat_wq) {
		FUNC3(hw);
		return NULL;
	}

	return dev;
}