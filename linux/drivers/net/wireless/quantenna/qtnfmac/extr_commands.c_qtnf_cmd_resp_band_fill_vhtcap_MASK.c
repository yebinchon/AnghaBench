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
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_vht_cap {int /*<<< orphan*/  supp_mcs; int /*<<< orphan*/  vht_cap_info; } ;
struct ieee80211_sta_vht_cap {int vht_supported; int /*<<< orphan*/  vht_mcs; int /*<<< orphan*/  cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(const u8 *info,
					   struct ieee80211_sta_vht_cap *bcap)
{
	const struct ieee80211_vht_cap *vht_cap =
		(const struct ieee80211_vht_cap *)info;

	bcap->vht_supported = true;
	bcap->cap = FUNC0(vht_cap->vht_cap_info);
	FUNC1(&bcap->vht_mcs, &vht_cap->supp_mcs, sizeof(bcap->vht_mcs));
}