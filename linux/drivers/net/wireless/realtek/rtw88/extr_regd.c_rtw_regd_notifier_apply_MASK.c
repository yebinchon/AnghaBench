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
struct wiphy {int dummy; } ;
struct rtw_dev {int /*<<< orphan*/  regd; } ;
struct regulatory_request {scalar_t__ initiator; int /*<<< orphan*/  alpha2; } ;

/* Variables and functions */
 scalar_t__ NL80211_REGDOM_SET_BY_USER ; 
 int /*<<< orphan*/  FUNC0 (struct wiphy*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct rtw_dev *rtwdev,
				   struct wiphy *wiphy,
				   struct regulatory_request *request)
{
	if (request->initiator == NL80211_REGDOM_SET_BY_USER)
		return 0;
	rtwdev->regd = FUNC1(request->alpha2);
	FUNC0(wiphy, request->initiator);

	return 0;
}