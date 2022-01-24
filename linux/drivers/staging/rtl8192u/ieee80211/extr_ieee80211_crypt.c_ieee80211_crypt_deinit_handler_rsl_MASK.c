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
struct timer_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct ieee80211_device {int /*<<< orphan*/  lock; TYPE_2__ crypt_deinit_timer; TYPE_1__* dev; int /*<<< orphan*/  crypt_deinit_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  crypt_deinit_timer ; 
 struct ieee80211_device* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct ieee80211_device* ieee ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct timer_list *t)
{
	struct ieee80211_device *ieee = FUNC1(ieee, t, crypt_deinit_timer);
	unsigned long flags;

	FUNC5(&ieee->lock, flags);
	FUNC2(ieee, 0);
	if (!FUNC3(&ieee->crypt_deinit_list)) {
		FUNC4(ieee->dev, "%s: entries remaining in delayed crypt deletion list\n",
				ieee->dev->name);
		ieee->crypt_deinit_timer.expires = jiffies + HZ;
		FUNC0(&ieee->crypt_deinit_timer);
	}
	FUNC6(&ieee->lock, flags);

}