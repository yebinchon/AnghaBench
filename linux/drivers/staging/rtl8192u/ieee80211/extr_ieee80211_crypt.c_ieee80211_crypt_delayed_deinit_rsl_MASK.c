#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ expires; } ;
struct ieee80211_device {int /*<<< orphan*/  lock; TYPE_1__ crypt_deinit_timer; int /*<<< orphan*/  crypt_deinit_list; } ;
struct ieee80211_crypt_data {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(struct ieee80211_device *ieee,
				    struct ieee80211_crypt_data **crypt)
{
	struct ieee80211_crypt_data *tmp;
	unsigned long flags;

	if (!(*crypt))
		return;

	tmp = *crypt;
	*crypt = NULL;

	/* must not run ops->deinit() while there may be pending encrypt or
	 * decrypt operations. Use a list of delayed deinits to avoid needing
	 * locking.
	 */

	FUNC2(&ieee->lock, flags);
	FUNC1(&tmp->list, &ieee->crypt_deinit_list);
	if (!FUNC4(&ieee->crypt_deinit_timer)) {
		ieee->crypt_deinit_timer.expires = jiffies + HZ;
		FUNC0(&ieee->crypt_deinit_timer);
	}
	FUNC3(&ieee->lock, flags);
}