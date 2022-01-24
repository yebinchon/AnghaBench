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
typedef  int u32 ;
struct rtl8187_priv {int txpwr_base; TYPE_2__* map; TYPE_1__* channels; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  TX_GAIN_OFDM; int /*<<< orphan*/  EEPROM_CMD; int /*<<< orphan*/  CONFIG3; int /*<<< orphan*/  ANAPARAM2; int /*<<< orphan*/  TX_GAIN_CCK; } ;
struct TYPE_3__ {int hw_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8187_RTL8225_ANAPARAM2_ON ; 
 int RTL818X_CONFIG3_ANAPARAM_WRITE ; 
 int RTL818X_EEPROM_CMD_CONFIG ; 
 int RTL818X_EEPROM_CMD_NORMAL ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct rtl8187_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8187_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8187_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int,int) ; 
 int* rtl8225z2_tx_gain_cck_ofdm ; 
 int* rtl8225z2_tx_power_cck ; 
 int* rtl8225z2_tx_power_cck_ch14 ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *dev, int channel)
{
	struct rtl8187_priv *priv = dev->priv;
	u8 cck_power, ofdm_power;
	const u8 *tmp;
	u32 reg;
	int i;

	cck_power = priv->channels[channel - 1].hw_value & 0xF;
	ofdm_power = priv->channels[channel - 1].hw_value >> 4;

	cck_power = FUNC0(cck_power, (u8)15);
	cck_power += priv->txpwr_base & 0xF;
	cck_power = FUNC0(cck_power, (u8)35);

	if (ofdm_power > (u8)15)
		ofdm_power = 25;
	else
		ofdm_power += 10;
	ofdm_power += priv->txpwr_base >> 4;
	ofdm_power = FUNC0(ofdm_power, (u8)35);

	if (channel == 14)
		tmp = rtl8225z2_tx_power_cck_ch14;
	else
		tmp = rtl8225z2_tx_power_cck;

	for (i = 0; i < 8; i++)
		FUNC5(dev, 0x44 + i, *tmp++);

	FUNC4(priv, &priv->map->TX_GAIN_CCK,
			 rtl8225z2_tx_gain_cck_ofdm[cck_power]);
	FUNC1(1);

	/* anaparam2 on */
	FUNC4(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_CONFIG);
	reg = FUNC2(priv, &priv->map->CONFIG3);
	FUNC4(priv, &priv->map->CONFIG3,
			reg | RTL818X_CONFIG3_ANAPARAM_WRITE);
	FUNC3(priv, &priv->map->ANAPARAM2,
			  RTL8187_RTL8225_ANAPARAM2_ON);
	FUNC4(priv, &priv->map->CONFIG3,
			reg & ~RTL818X_CONFIG3_ANAPARAM_WRITE);
	FUNC4(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_NORMAL);

	FUNC6(dev, 2, 0x42);
	FUNC6(dev, 5, 0x00);
	FUNC6(dev, 6, 0x40);
	FUNC6(dev, 7, 0x00);
	FUNC6(dev, 8, 0x40);

	FUNC4(priv, &priv->map->TX_GAIN_OFDM,
			 rtl8225z2_tx_gain_cck_ofdm[ofdm_power]);
	FUNC1(1);
}