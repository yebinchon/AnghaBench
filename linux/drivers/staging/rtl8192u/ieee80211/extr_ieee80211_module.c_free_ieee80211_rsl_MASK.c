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
struct net_device {int dummy; } ;
struct ieee80211_device {struct ieee80211_crypt_data** crypt; int /*<<< orphan*/  crypt_deinit_timer; struct ieee80211_crypt_data* pHTInfo; } ;
struct ieee80211_crypt_data {int /*<<< orphan*/  priv; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* deinit ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*) ; 
 int WEP_KEYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_crypt_data*) ; 
 struct ieee80211_device* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct net_device *dev)
{
	struct ieee80211_device *ieee = FUNC7(dev);
	int i;
	/* struct list_head *p, *q; */
//	del_timer_sync(&ieee->SwBwTimer);
	FUNC6(ieee->pHTInfo);
	ieee->pHTInfo = NULL;
	FUNC0(ieee);
	FUNC5(ieee);
	FUNC1(&ieee->crypt_deinit_timer);
	FUNC3(ieee, 1);

	for (i = 0; i < WEP_KEYS; i++) {
		struct ieee80211_crypt_data *crypt = ieee->crypt[i];

		if (crypt) {
			if (crypt->ops)
				crypt->ops->deinit(crypt->priv);
			FUNC6(crypt);
			ieee->crypt[i] = NULL;
		}
	}

	FUNC4(ieee);
	FUNC2(dev);
}