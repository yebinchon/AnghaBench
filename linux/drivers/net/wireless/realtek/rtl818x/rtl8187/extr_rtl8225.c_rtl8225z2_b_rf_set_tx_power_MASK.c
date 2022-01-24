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
struct rtl8187_priv {scalar_t__ hw_rev; int txpwr_base; TYPE_2__* map; TYPE_1__* channels; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  TX_GAIN_OFDM; int /*<<< orphan*/  TX_GAIN_CCK; } ;
struct TYPE_3__ {int hw_value; } ;

/* Variables and functions */
 scalar_t__ RTL8187BvB ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8187_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int,int) ; 
 int* rtl8225z2_tx_gain_cck_ofdm ; 
 int* rtl8225z2_tx_power_cck ; 
 int* rtl8225z2_tx_power_cck_ch14 ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *dev, int channel)
{
	struct rtl8187_priv *priv = dev->priv;
	u8 cck_power, ofdm_power;
	const u8 *tmp;
	int i;

	cck_power = priv->channels[channel - 1].hw_value & 0xF;
	ofdm_power = priv->channels[channel - 1].hw_value >> 4;

	cck_power += (priv->hw_rev == RTL8187BvB) ? 0 : 7;
	cck_power += priv->txpwr_base & 0xF;
	cck_power = FUNC0(cck_power, (u8)35);

	if (ofdm_power > 15)
		ofdm_power = (priv->hw_rev == RTL8187BvB) ? 17 : 25;
	else
		ofdm_power += (priv->hw_rev == RTL8187BvB) ? 2 : 10;
	ofdm_power += (priv->txpwr_base >> 4) & 0xF;
	ofdm_power = FUNC0(ofdm_power, (u8)35);

	if (channel == 14)
		tmp = rtl8225z2_tx_power_cck_ch14;
	else
		tmp = rtl8225z2_tx_power_cck;

	if (priv->hw_rev == RTL8187BvB) {
		if (cck_power <= 6)
			; /* do nothing */
		else if (cck_power <= 11)
			tmp += 8;
		else
			tmp += 16;
	} else {
		if (cck_power <= 5)
			; /* do nothing */
		else if (cck_power <= 11)
			tmp += 8;
		else if (cck_power <= 17)
			tmp += 16;
		else
			tmp += 24;
	}

	for (i = 0; i < 8; i++)
		FUNC3(dev, 0x44 + i, *tmp++);

	FUNC2(priv, &priv->map->TX_GAIN_CCK,
			 rtl8225z2_tx_gain_cck_ofdm[cck_power] << 1);
	FUNC1(1);

	FUNC2(priv, &priv->map->TX_GAIN_OFDM,
			 rtl8225z2_tx_gain_cck_ofdm[ofdm_power] << 1);
	if (priv->hw_rev == RTL8187BvB) {
		if (ofdm_power <= 11) {
			FUNC4(dev, 0x87, 0x60);
			FUNC4(dev, 0x89, 0x60);
		} else {
			FUNC4(dev, 0x87, 0x5c);
			FUNC4(dev, 0x89, 0x5c);
		}
	} else {
		if (ofdm_power <= 11) {
			FUNC4(dev, 0x87, 0x5c);
			FUNC4(dev, 0x89, 0x5c);
		} else if (ofdm_power <= 17) {
			FUNC4(dev, 0x87, 0x54);
			FUNC4(dev, 0x89, 0x54);
		} else {
			FUNC4(dev, 0x87, 0x50);
			FUNC4(dev, 0x89, 0x50);
		}
	}
	FUNC1(1);
}