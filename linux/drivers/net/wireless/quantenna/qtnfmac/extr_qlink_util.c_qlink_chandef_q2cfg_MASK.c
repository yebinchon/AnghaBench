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
struct wiphy {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  center_freq; } ;
struct qlink_chandef {int /*<<< orphan*/  width; int /*<<< orphan*/  center_freq2; int /*<<< orphan*/  center_freq1; TYPE_1__ chan; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_chan_def {int /*<<< orphan*/  width; void* center_freq2; void* center_freq1; struct ieee80211_channel* chan; } ;

/* Variables and functions */
 struct ieee80211_channel* FUNC0 (struct wiphy*,void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct wiphy *wiphy,
			 const struct qlink_chandef *qch,
			 struct cfg80211_chan_def *chdef)
{
	struct ieee80211_channel *chan;

	chan = FUNC0(wiphy, FUNC1(qch->chan.center_freq));

	chdef->chan = chan;
	chdef->center_freq1 = FUNC1(qch->center_freq1);
	chdef->center_freq2 = FUNC1(qch->center_freq2);
	chdef->width = FUNC2(qch->width);
}