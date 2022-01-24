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
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_conf {TYPE_2__ chandef; } ;
struct TYPE_3__ {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int) ; 
 int* rtl8225se_chan ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

void FUNC5(struct ieee80211_hw *dev,
				   struct ieee80211_conf *conf)
{
	int chan =
		FUNC0(conf->chandef.chan->center_freq);

	FUNC3(dev, chan);
	FUNC2(dev, 0x7, rtl8225se_chan[chan - 1]);
	if ((FUNC1(dev, 0x7) & 0x0F80) !=
		rtl8225se_chan[chan - 1])
		FUNC2(dev, 0x7, rtl8225se_chan[chan - 1]);
	FUNC4(10000, 20000);
}