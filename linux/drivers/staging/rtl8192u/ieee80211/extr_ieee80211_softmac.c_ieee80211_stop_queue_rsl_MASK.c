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
struct TYPE_2__ {int /*<<< orphan*/  swtxstop; } ;
struct ieee80211_device {int queue_stop; TYPE_1__ softmac_stats; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct ieee80211_device *ieee)
{
	//unsigned long flags;
	//spin_lock_irqsave(&ieee->lock,flags);

	if (!FUNC0(ieee->dev)) {
		FUNC1(ieee->dev);
		ieee->softmac_stats.swtxstop++;
	}
	ieee->queue_stop = 1;
	//spin_unlock_irqrestore(&ieee->lock,flags);
}