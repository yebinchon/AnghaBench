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
struct rt2x00lib_conf {TYPE_2__* conf; int /*<<< orphan*/  channel; int /*<<< orphan*/  rf; } ;
struct rt2x00_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  chan; } ;
struct TYPE_4__ {int /*<<< orphan*/  power_level; TYPE_1__ chandef; } ;

/* Variables and functions */
 unsigned int const IEEE80211_CONF_CHANGE_CHANNEL ; 
 unsigned int const IEEE80211_CONF_CHANGE_POWER ; 
 unsigned int const IEEE80211_CONF_CHANGE_PS ; 
 unsigned int const IEEE80211_CONF_CHANGE_RETRY_LIMITS ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,struct rt2x00lib_conf*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,struct rt2x00lib_conf*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,struct rt2x00lib_conf*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct rt2x00_dev *rt2x00dev,
		   struct rt2x00lib_conf *libconf,
		   const unsigned int flags)
{
	/* Always recalculate LNA gain before changing configuration */
	FUNC1(rt2x00dev, libconf);

	if (flags & IEEE80211_CONF_CHANGE_CHANNEL) {
		FUNC0(rt2x00dev, libconf->conf,
				      &libconf->rf, &libconf->channel);
		FUNC4(rt2x00dev, libconf->conf->chandef.chan,
				      libconf->conf->power_level);
	}
	if (flags & IEEE80211_CONF_CHANGE_POWER)
		FUNC4(rt2x00dev, libconf->conf->chandef.chan,
				      libconf->conf->power_level);
	if (flags & IEEE80211_CONF_CHANGE_RETRY_LIMITS)
		FUNC3(rt2x00dev, libconf);
	if (flags & IEEE80211_CONF_CHANGE_PS)
		FUNC2(rt2x00dev, libconf);
}