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
typedef  int u32 ;
typedef  int u16 ;
struct rtl8180_priv {int chip_family; TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  BRSR_8187SE; int /*<<< orphan*/  RESP_RATE; int /*<<< orphan*/  BRSR; } ;

/* Variables and functions */
#define  RTL818X_CHIP_FAMILY_RTL8180 130 
#define  RTL818X_CHIP_FAMILY_RTL8185 129 
#define  RTL818X_CHIP_FAMILY_RTL8187SE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct rtl8180_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8180_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8180_priv*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *dev,
			    u32 basic_mask)
{
	struct rtl8180_priv *priv = dev->priv;
	u16 reg;
	u32 resp_mask;
	u8 basic_max;
	u8 resp_max, resp_min;

	resp_mask = basic_mask;
	/* IEEE80211 says the response rate should be equal to the highest basic
	 * rate that is not faster than received frame. But it says also that if
	 * the basic rate set does not contains any rate for the current
	 * modulation class then mandatory rate set must be used for that
	 * modulation class. Eventually add OFDM mandatory rates..
	 */
	if ((resp_mask & 0xf) == resp_mask)
		resp_mask |= 0x150; /* 6, 12, 24Mbps */

	switch (priv->chip_family) {

	case RTL818X_CHIP_FAMILY_RTL8180:
		/* in 8180 this is NOT a BITMAP */
		basic_max = FUNC1(basic_mask) - 1;
		reg = FUNC2(priv, &priv->map->BRSR);
		reg &= ~3;
		reg |= basic_max;
		FUNC3(priv, &priv->map->BRSR, reg);
		break;

	case RTL818X_CHIP_FAMILY_RTL8185:
		resp_max = FUNC1(resp_mask) - 1;
		resp_min = FUNC0(resp_mask) - 1;
		/* in 8185 this is a BITMAP */
		FUNC3(priv, &priv->map->BRSR, basic_mask);
		FUNC4(priv, &priv->map->RESP_RATE, (resp_max << 4) |
				resp_min);
		break;

	case RTL818X_CHIP_FAMILY_RTL8187SE:
		/* in 8187se this is a BITMAP. BRSR reg actually sets
		 * response rates.
		 */
		FUNC3(priv, &priv->map->BRSR_8187SE, resp_mask);
		break;
	}
}