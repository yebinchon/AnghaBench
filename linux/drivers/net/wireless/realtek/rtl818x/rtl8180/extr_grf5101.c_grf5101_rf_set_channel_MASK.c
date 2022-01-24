#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rtl8180_priv {TYPE_1__* channels; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_6__ {TYPE_2__* chan; } ;
struct ieee80211_conf {TYPE_3__ chandef; } ;
struct TYPE_5__ {int /*<<< orphan*/  center_freq; } ;
struct TYPE_4__ {int hw_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *dev,
				   struct ieee80211_conf *conf)
{
	struct rtl8180_priv *priv = dev->priv;
	int channel =
		FUNC1(conf->chandef.chan->center_freq);
	u32 txpw = priv->channels[channel - 1].hw_value & 0xFF;
	u32 chan = channel - 1;

	/* set TX power */
	FUNC2(dev, 0x15, 0x0);
	FUNC2(dev, 0x06, txpw);
	FUNC2(dev, 0x15, 0x10);
	FUNC2(dev, 0x15, 0x0);

	/* set frequency */
	FUNC2(dev, 0x07, 0x0);
	FUNC2(dev, 0x0B, chan);
	FUNC2(dev, 0x07, 0x1000);

	FUNC0(dev, channel);
}