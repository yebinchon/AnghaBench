#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wiphy {TYPE_1__** bands; } ;
struct qtnf_wmac {int /*<<< orphan*/  macid; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_4__ {int band; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct qtnf_wmac*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct wiphy *wiphy,
				     struct qtnf_wmac *mac,
				     enum nl80211_band band)
{
	int ret;

	wiphy->bands[band] = FUNC0(sizeof(*wiphy->bands[band]), GFP_KERNEL);
	if (!wiphy->bands[band])
		return -ENOMEM;

	wiphy->bands[band]->band = band;

	ret = FUNC3(mac, wiphy->bands[band]);
	if (ret) {
		FUNC1("MAC%u: band %u: failed to get chans info: %d\n",
		       mac->macid, band, ret);
		return ret;
	}

	FUNC2(wiphy->bands[band]);

	return 0;
}