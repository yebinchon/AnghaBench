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
struct wiphy {int /*<<< orphan*/ * bands; } ;
struct regulatory_request {int /*<<< orphan*/ * alpha2; int /*<<< orphan*/  initiator; } ;
struct qtnf_wmac {int /*<<< orphan*/  macid; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 int NUM_NL80211_BANDS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,...) ; 
 int FUNC2 (struct qtnf_wmac*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qtnf_wmac*,struct regulatory_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wiphy*) ; 
 struct qtnf_wmac* FUNC5 (struct wiphy*) ; 

__attribute__((used)) static void FUNC6(struct wiphy *wiphy,
				       struct regulatory_request *req)
{
	struct qtnf_wmac *mac = FUNC5(wiphy);
	enum nl80211_band band;
	int ret;

	FUNC0("MAC%u: initiator=%d alpha=%c%c\n", mac->macid, req->initiator,
		 req->alpha2[0], req->alpha2[1]);

	ret = FUNC3(mac, req, FUNC4(wiphy));
	if (ret) {
		FUNC1("MAC%u: failed to update region to %c%c: %d\n",
		       mac->macid, req->alpha2[0], req->alpha2[1], ret);
		return;
	}

	for (band = 0; band < NUM_NL80211_BANDS; ++band) {
		if (!wiphy->bands[band])
			continue;

		ret = FUNC2(mac, wiphy->bands[band]);
		if (ret)
			FUNC1("MAC%u: failed to update band %u\n",
			       mac->macid, band);
	}
}