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
struct wiphy {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  country_code; } ;
struct rtw_dev {int /*<<< orphan*/  regd; TYPE_2__ efuse; TYPE_1__* hw; } ;
struct TYPE_3__ {struct wiphy* wiphy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct wiphy*,void (*) (struct wiphy*,struct regulatory_request*)) ; 

int FUNC2(struct rtw_dev *rtwdev,
		  void (*reg_notifier)(struct wiphy *wiphy,
				       struct regulatory_request *request))
{
	struct wiphy *wiphy = rtwdev->hw->wiphy;

	if (!wiphy)
		return -EINVAL;

	rtwdev->regd = FUNC0(rtwdev->efuse.country_code);
	FUNC1(&rtwdev->regd, wiphy, reg_notifier);

	return 0;
}