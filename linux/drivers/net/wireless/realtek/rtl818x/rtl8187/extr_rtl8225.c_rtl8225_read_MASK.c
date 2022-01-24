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
typedef  int u8 ;
typedef  int u16 ;
struct rtl8187_priv {TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  RFPinsOutput; int /*<<< orphan*/  RFPinsSelect; int /*<<< orphan*/  RFPinsEnable; int /*<<< orphan*/  RFPinsInput; } ;

/* Variables and functions */
 int FUNC0 (struct rtl8187_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8187_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static u16 FUNC3(struct ieee80211_hw *dev, u8 addr)
{
	struct rtl8187_priv *priv = dev->priv;
	u16 reg80, reg82, reg84, out;
	int i;

	reg80 = FUNC0(priv, &priv->map->RFPinsOutput);
	reg82 = FUNC0(priv, &priv->map->RFPinsEnable);
	reg84 = FUNC0(priv, &priv->map->RFPinsSelect);

	reg80 &= ~0xF;

	FUNC1(priv, &priv->map->RFPinsEnable, reg82 | 0x000F);
	FUNC1(priv, &priv->map->RFPinsSelect, reg84 | 0x000F);

	FUNC1(priv, &priv->map->RFPinsOutput, reg80 | (1 << 2));
	FUNC2(4);
	FUNC1(priv, &priv->map->RFPinsOutput, reg80);
	FUNC2(5);

	for (i = 4; i >= 0; i--) {
		u16 reg = reg80 | ((addr >> i) & 1);

		if (!(i & 1)) {
			FUNC1(priv, &priv->map->RFPinsOutput, reg);
			FUNC2(1);
		}

		FUNC1(priv, &priv->map->RFPinsOutput,
				  reg | (1 << 1));
		FUNC2(2);
		FUNC1(priv, &priv->map->RFPinsOutput,
				  reg | (1 << 1));
		FUNC2(2);

		if (i & 1) {
			FUNC1(priv, &priv->map->RFPinsOutput, reg);
			FUNC2(1);
		}
	}

	FUNC1(priv, &priv->map->RFPinsOutput,
			  reg80 | (1 << 3) | (1 << 1));
	FUNC2(2);
	FUNC1(priv, &priv->map->RFPinsOutput,
			  reg80 | (1 << 3));
	FUNC2(2);
	FUNC1(priv, &priv->map->RFPinsOutput,
			  reg80 | (1 << 3));
	FUNC2(2);

	out = 0;
	for (i = 11; i >= 0; i--) {
		FUNC1(priv, &priv->map->RFPinsOutput,
				  reg80 | (1 << 3));
		FUNC2(1);
		FUNC1(priv, &priv->map->RFPinsOutput,
				  reg80 | (1 << 3) | (1 << 1));
		FUNC2(2);
		FUNC1(priv, &priv->map->RFPinsOutput,
				  reg80 | (1 << 3) | (1 << 1));
		FUNC2(2);
		FUNC1(priv, &priv->map->RFPinsOutput,
				  reg80 | (1 << 3) | (1 << 1));
		FUNC2(2);

		if (FUNC0(priv, &priv->map->RFPinsInput) & (1 << 1))
			out |= 1 << i;

		FUNC1(priv, &priv->map->RFPinsOutput,
				  reg80 | (1 << 3));
		FUNC2(2);
	}

	FUNC1(priv, &priv->map->RFPinsOutput,
			  reg80 | (1 << 3) | (1 << 2));
	FUNC2(2);

	FUNC1(priv, &priv->map->RFPinsEnable, reg82);
	FUNC1(priv, &priv->map->RFPinsSelect, reg84);
	FUNC1(priv, &priv->map->RFPinsOutput, 0x03A0);

	return out;
}