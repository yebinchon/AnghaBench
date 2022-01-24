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
struct rtl8180_priv {TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  TX_ANTENNA; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtl8180_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *dev, u8 def_ant,
					 bool diversity)
{
	struct rtl8180_priv *priv = dev->priv;

	FUNC1(dev, 0x0C, 0x09);
	if (diversity) {
		if (def_ant == 1) {
			FUNC0(priv, &priv->map->TX_ANTENNA, 0x00);
			FUNC1(dev, 0x11, 0xBB);
			FUNC1(dev, 0x01, 0xC7);
			FUNC2(dev, 0x0D, 0x54);
			FUNC2(dev, 0x18, 0xB2);
		} else { /* main antenna */
			FUNC0(priv, &priv->map->TX_ANTENNA, 0x03);
			FUNC1(dev, 0x11, 0x9B);
			FUNC1(dev, 0x01, 0xC7);
			FUNC2(dev, 0x0D, 0x5C);
			FUNC2(dev, 0x18, 0xB2);
		}
	} else { /* disable antenna diversity */
		if (def_ant == 1) {
			FUNC0(priv, &priv->map->TX_ANTENNA, 0x00);
			FUNC1(dev, 0x11, 0xBB);
			FUNC1(dev, 0x01, 0x47);
			FUNC2(dev, 0x0D, 0x54);
			FUNC2(dev, 0x18, 0x32);
		} else { /* main antenna */
			FUNC0(priv, &priv->map->TX_ANTENNA, 0x03);
			FUNC1(dev, 0x11, 0x9B);
			FUNC1(dev, 0x01, 0x47);
			FUNC2(dev, 0x0D, 0x5C);
			FUNC2(dev, 0x18, 0x32);
		}
	}
	/* priv->curr_ant = def_ant; */
}