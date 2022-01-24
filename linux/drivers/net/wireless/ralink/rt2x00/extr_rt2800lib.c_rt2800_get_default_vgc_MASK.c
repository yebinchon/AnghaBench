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
typedef  int u8 ;
struct rt2x00_dev {scalar_t__ curr_band; int lna_gain; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_CHANNEL_HT40 ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  RT3070 ; 
 int /*<<< orphan*/  RT3071 ; 
 int /*<<< orphan*/  RT3090 ; 
 int /*<<< orphan*/  RT3290 ; 
 int /*<<< orphan*/  RT3390 ; 
 int /*<<< orphan*/  RT3572 ; 
 int /*<<< orphan*/  RT3593 ; 
 int /*<<< orphan*/  RT3883 ; 
 int /*<<< orphan*/  RT5390 ; 
 int /*<<< orphan*/  RT5392 ; 
 int /*<<< orphan*/  RT5592 ; 
 int /*<<< orphan*/  RT6352 ; 
 scalar_t__ FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u8 FUNC2(struct rt2x00_dev *rt2x00dev)
{
	u8 vgc;

	if (rt2x00dev->curr_band == NL80211_BAND_2GHZ) {
		if (FUNC0(rt2x00dev, RT3070) ||
		    FUNC0(rt2x00dev, RT3071) ||
		    FUNC0(rt2x00dev, RT3090) ||
		    FUNC0(rt2x00dev, RT3290) ||
		    FUNC0(rt2x00dev, RT3390) ||
		    FUNC0(rt2x00dev, RT3572) ||
		    FUNC0(rt2x00dev, RT3593) ||
		    FUNC0(rt2x00dev, RT5390) ||
		    FUNC0(rt2x00dev, RT5392) ||
		    FUNC0(rt2x00dev, RT5592) ||
		    FUNC0(rt2x00dev, RT6352))
			vgc = 0x1c + (2 * rt2x00dev->lna_gain);
		else
			vgc = 0x2e + rt2x00dev->lna_gain;
	} else { /* 5GHZ band */
		if (FUNC0(rt2x00dev, RT3593) ||
		    FUNC0(rt2x00dev, RT3883))
			vgc = 0x20 + (rt2x00dev->lna_gain * 5) / 3;
		else if (FUNC0(rt2x00dev, RT5592))
			vgc = 0x24 + (2 * rt2x00dev->lna_gain);
		else {
			if (!FUNC1(CONFIG_CHANNEL_HT40, &rt2x00dev->flags))
				vgc = 0x32 + (rt2x00dev->lna_gain * 5) / 3;
			else
				vgc = 0x3a + (rt2x00dev->lna_gain * 5) / 3;
		}
	}

	return vgc;
}