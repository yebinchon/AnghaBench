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
struct rtl8187_priv {TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  TX_ANTENNA; int /*<<< orphan*/  TX_GAIN_OFDM; int /*<<< orphan*/  TX_GAIN_CCK; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8187_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int,int) ; 
 int* rtl8225z2_agc ; 
 int* rtl8225z2_ofdm ; 
 int* rtl8225z2_rxgain ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *dev)
{
	struct rtl8187_priv *priv = dev->priv;
	int i;

	FUNC2(dev, 0x0, 0x0B7);
	FUNC2(dev, 0x1, 0xEE0);
	FUNC2(dev, 0x2, 0x44D);
	FUNC2(dev, 0x3, 0x441);
	FUNC2(dev, 0x4, 0x8C3);
	FUNC2(dev, 0x5, 0xC72);
	FUNC2(dev, 0x6, 0x0E6);
	FUNC2(dev, 0x7, 0x82A);
	FUNC2(dev, 0x8, 0x03F);
	FUNC2(dev, 0x9, 0x335);
	FUNC2(dev, 0xa, 0x9D4);
	FUNC2(dev, 0xb, 0x7BB);
	FUNC2(dev, 0xc, 0x850);
	FUNC2(dev, 0xd, 0xCDF);
	FUNC2(dev, 0xe, 0x02B);
	FUNC2(dev, 0xf, 0x114);

	FUNC2(dev, 0x0, 0x1B7);

	for (i = 0; i < FUNC0(rtl8225z2_rxgain); i++) {
		FUNC2(dev, 0x1, i + 1);
		FUNC2(dev, 0x2, rtl8225z2_rxgain[i]);
	}

	FUNC2(dev, 0x3, 0x080);
	FUNC2(dev, 0x5, 0x004);
	FUNC2(dev, 0x0, 0x0B7);

	FUNC2(dev, 0x2, 0xC4D);

	FUNC2(dev, 0x2, 0x44D);
	FUNC2(dev, 0x0, 0x2BF);

	FUNC1(priv, &priv->map->TX_GAIN_CCK, 0x03);
	FUNC1(priv, &priv->map->TX_GAIN_OFDM, 0x07);
	FUNC1(priv, &priv->map->TX_ANTENNA, 0x03);

	FUNC4(dev, 0x80, 0x12);
	for (i = 0; i < FUNC0(rtl8225z2_agc); i++) {
		FUNC4(dev, 0xF, rtl8225z2_agc[i]);
		FUNC4(dev, 0xE, 0x80 + i);
		FUNC4(dev, 0xE, 0);
	}
	FUNC4(dev, 0x80, 0x10);

	for (i = 0; i < FUNC0(rtl8225z2_ofdm); i++)
		FUNC4(dev, i, rtl8225z2_ofdm[i]);

	FUNC4(dev, 0x97, 0x46);
	FUNC4(dev, 0xa4, 0xb6);
	FUNC4(dev, 0x85, 0xfc);
	FUNC3(dev, 0xc1, 0x88);
}