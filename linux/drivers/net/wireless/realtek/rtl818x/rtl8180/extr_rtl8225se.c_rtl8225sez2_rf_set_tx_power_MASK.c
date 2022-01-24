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
typedef  int u8 ;
struct rtl8180_priv {TYPE_2__* map; TYPE_1__* channels; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  TX_GAIN_OFDM; int /*<<< orphan*/  TX_GAIN_CCK; } ;
struct TYPE_3__ {int hw_value; } ;

/* Variables and functions */
 int /*<<< orphan*/ * cck_ofdm_gain_settings ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8180_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *dev, int channel)
{
	struct rtl8180_priv *priv = dev->priv;
	u8 cck_power, ofdm_power;

	cck_power = priv->channels[channel - 1].hw_value & 0xFF;
	if (cck_power > 35)
		cck_power = 35;
	FUNC0(priv, &priv->map->TX_GAIN_CCK,
			 cck_ofdm_gain_settings[cck_power]);

	FUNC2(1000, 5000);
	ofdm_power = priv->channels[channel - 1].hw_value >> 8;
	if (ofdm_power > 35)
		ofdm_power = 35;

	FUNC0(priv, &priv->map->TX_GAIN_OFDM,
			 cck_ofdm_gain_settings[ofdm_power]);
	if (ofdm_power < 12) {
		FUNC1(dev, 7, 0x5C);
		FUNC1(dev, 9, 0x5C);
	}
	if (ofdm_power < 18) {
		FUNC1(dev, 7, 0x54);
		FUNC1(dev, 9, 0x54);
	} else {
		FUNC1(dev, 7, 0x50);
		FUNC1(dev, 9, 0x50);
	}

	FUNC2(1000, 5000);
}