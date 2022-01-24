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
struct TYPE_2__ {int /*<<< orphan*/  flags; void* center_freq; void* hw_value; } ;
struct qlink_chandef {int /*<<< orphan*/  width; void* center_freq2; void* center_freq1; TYPE_1__ chan; } ;
struct ieee80211_channel {int /*<<< orphan*/  flags; int /*<<< orphan*/  center_freq; int /*<<< orphan*/  hw_value; } ;
struct cfg80211_chan_def {int /*<<< orphan*/  width; int /*<<< orphan*/  center_freq2; int /*<<< orphan*/  center_freq1; struct ieee80211_channel* chan; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(const struct cfg80211_chan_def *chdef,
			 struct qlink_chandef *qch)
{
	struct ieee80211_channel *chan = chdef->chan;

	qch->chan.hw_value = FUNC0(chan->hw_value);
	qch->chan.center_freq = FUNC0(chan->center_freq);
	qch->chan.flags = FUNC1(chan->flags);

	qch->center_freq1 = FUNC0(chdef->center_freq1);
	qch->center_freq2 = FUNC0(chdef->center_freq2);
	qch->width = FUNC2(chdef->width);
}