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
struct mt76_wcid {int tx_rate_set; int /*<<< orphan*/  tx_rate_nss; int /*<<< orphan*/  tx_rate; } ;
struct mt7601u_dev {int /*<<< orphan*/  lock; } ;
struct ieee80211_tx_rate {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mt7601u_dev*,struct ieee80211_tx_rate const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct mt7601u_dev *dev, struct mt76_wcid *wcid,
			    const struct ieee80211_tx_rate *rate)
{
	unsigned long flags;

	FUNC1(&dev->lock, flags);
	wcid->tx_rate = FUNC0(dev, rate, &wcid->tx_rate_nss);
	wcid->tx_rate_set = true;
	FUNC2(&dev->lock, flags);
}