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
struct rt2x00_dev {int dummy; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT3593 ; 
 int /*<<< orphan*/  RT3883 ; 
 int /*<<< orphan*/  RT6352 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,struct ieee80211_channel*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,struct ieee80211_channel*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,struct ieee80211_channel*,int) ; 
 scalar_t__ FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct rt2x00_dev *rt2x00dev,
				  struct ieee80211_channel *chan,
				  int power_level)
{
	if (FUNC3(rt2x00dev, RT3593) ||
	    FUNC3(rt2x00dev, RT3883))
		FUNC1(rt2x00dev, chan, power_level);
	else if (FUNC3(rt2x00dev, RT6352))
		FUNC2(rt2x00dev, chan, power_level);
	else
		FUNC0(rt2x00dev, chan, power_level);
}