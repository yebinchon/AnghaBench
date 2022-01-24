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
struct rtl8180_priv {TYPE_2__* map; TYPE_1__* channels; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  TX_GAIN_OFDM; int /*<<< orphan*/  EEPROM_CMD; int /*<<< orphan*/  CONFIG3; int /*<<< orphan*/  ANAPARAM2; int /*<<< orphan*/  TX_GAIN_CCK; } ;
struct TYPE_3__ {int hw_value; } ;

/* Variables and functions */
 int RTL818X_CONFIG3_ANAPARAM_WRITE ; 
 int RTL818X_EEPROM_CMD_CONFIG ; 
 int RTL818X_EEPROM_CMD_NORMAL ; 
 int /*<<< orphan*/  RTL8225_ANAPARAM2_ON ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct rtl8180_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8180_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8180_priv*,int /*<<< orphan*/ *,int) ; 
 int* rtl8225_tx_gain_cck_ofdm ; 
 int* rtl8225_tx_power_cck ; 
 int* rtl8225_tx_power_cck_ch14 ; 
 int* rtl8225_tx_power_ofdm ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int,int const) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *dev, int channel)
{
	struct rtl8180_priv *priv = dev->priv;
	u8 cck_power, ofdm_power;
	const u8 *tmp;
	u32 reg;
	int i;

	cck_power = priv->channels[channel - 1].hw_value & 0xFF;
	ofdm_power = priv->channels[channel - 1].hw_value >> 8;

	cck_power = FUNC0(cck_power, (u8)35);
	ofdm_power = FUNC0(ofdm_power, (u8)35);

	FUNC4(priv, &priv->map->TX_GAIN_CCK,
			 rtl8225_tx_gain_cck_ofdm[cck_power / 6] >> 1);

	if (channel == 14)
		tmp = &rtl8225_tx_power_cck_ch14[(cck_power % 6) * 8];
	else
		tmp = &rtl8225_tx_power_cck[(cck_power % 6) * 8];

	for (i = 0; i < 8; i++)
		FUNC5(dev, 0x44 + i, *tmp++);

	FUNC1(1); /* FIXME: optional? */

	/* TODO: use set_anaparam2 dev.c_func*/
	/* anaparam2 on */
	FUNC4(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_CONFIG);
	reg = FUNC2(priv, &priv->map->CONFIG3);
	FUNC4(priv, &priv->map->CONFIG3, reg | RTL818X_CONFIG3_ANAPARAM_WRITE);
	FUNC3(priv, &priv->map->ANAPARAM2, RTL8225_ANAPARAM2_ON);
	FUNC4(priv, &priv->map->CONFIG3, reg & ~RTL818X_CONFIG3_ANAPARAM_WRITE);
	FUNC4(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_NORMAL);

	FUNC4(priv, &priv->map->TX_GAIN_OFDM,
			 rtl8225_tx_gain_cck_ofdm[ofdm_power/6] >> 1);

	tmp = &rtl8225_tx_power_ofdm[ofdm_power % 6];

	FUNC6(dev, 5, *tmp);
	FUNC6(dev, 7, *tmp);

	FUNC1(1);
}