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
struct rtl8180_priv {int xtal_in; int xtal_out; TYPE_1__* map; scalar_t__ xtal_cal; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  TX_ANTENNA; int /*<<< orphan*/  TX_GAIN_OFDM; int /*<<< orphan*/  TX_GAIN_CCK; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 
 int FUNC8 (struct rtl8180_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8180_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 

void FUNC15(struct ieee80211_hw *dev)
{
	struct rtl8180_priv *priv = dev->priv;
	u32 rf23, rf24;
	u8 d_cut = 0;
	u8 tmp;

	/* Page 1 */
	FUNC4(dev, 0x00, 0x013F); FUNC1(1);
	rf23 = FUNC3(dev, 0x08); FUNC1(1);
	rf24 = FUNC3(dev, 0x09); FUNC1(1);
	if (rf23 == 0x0818 && rf24 == 0x070C)
		d_cut = 1;

	FUNC14(dev->wiphy, "RTL8225-SE version %s\n",
		d_cut ? "D" : "not-D");

	/* Page 0: reg 0 - 15 */
	FUNC4(dev, 0x00, 0x009F); FUNC1(1);
	FUNC4(dev, 0x01, 0x06E0); FUNC1(1);
	FUNC4(dev, 0x02, 0x004D); FUNC1(1);
	FUNC4(dev, 0x03, 0x07F1); FUNC1(1);
	FUNC4(dev, 0x04, 0x0975); FUNC1(1);
	FUNC4(dev, 0x05, 0x0C72); FUNC1(1);
	FUNC4(dev, 0x06, 0x0AE6); FUNC1(1);
	FUNC4(dev, 0x07, 0x00CA); FUNC1(1);
	FUNC4(dev, 0x08, 0x0E1C); FUNC1(1);
	FUNC4(dev, 0x09, 0x02F0); FUNC1(1);
	FUNC4(dev, 0x0A, 0x09D0); FUNC1(1);
	FUNC4(dev, 0x0B, 0x01BA); FUNC1(1);
	FUNC4(dev, 0x0C, 0x0640); FUNC1(1);
	FUNC4(dev, 0x0D, 0x08DF); FUNC1(1);
	FUNC4(dev, 0x0E, 0x0020); FUNC1(1);
	FUNC4(dev, 0x0F, 0x0990); FUNC1(1);
	/* page 1: reg 16-30 */
	FUNC4(dev, 0x00, 0x013F); FUNC1(1);
	FUNC4(dev, 0x03, 0x0806); FUNC1(1);
	FUNC4(dev, 0x04, 0x03A7); FUNC1(1);
	FUNC4(dev, 0x05, 0x059B); FUNC1(1);
	FUNC4(dev, 0x06, 0x0081); FUNC1(1);
	FUNC4(dev, 0x07, 0x01A0); FUNC1(1);
	FUNC4(dev, 0x0A, 0x0001); FUNC1(1);
	FUNC4(dev, 0x0B, 0x0418); FUNC1(1);
	FUNC4(dev, 0x0C, 0x0FBE); FUNC1(1);
	FUNC4(dev, 0x0D, 0x0008); FUNC1(1);
	if (d_cut)
		FUNC4(dev, 0x0E, 0x0807);
	else
		FUNC4(dev, 0x0E, 0x0806);
	FUNC1(1);
	FUNC4(dev, 0x0F, 0x0ACC); FUNC1(1);
	FUNC4(dev, 0x00, 0x01D7); FUNC1(1);
	FUNC4(dev, 0x03, 0x0E00); FUNC1(1);
	FUNC4(dev, 0x04, 0x0E50); FUNC1(1);

	FUNC7(dev);

	FUNC4(dev, 0x05, 0x0203); FUNC1(1);
	FUNC4(dev, 0x06, 0x0200); FUNC1(1);
	FUNC4(dev, 0x00, 0x0137); FUNC1(11);
	FUNC4(dev, 0x0D, 0x0008); FUNC1(11);
	FUNC4(dev, 0x00, 0x0037); FUNC1(11);
	FUNC4(dev, 0x04, 0x0160); FUNC1(11);
	FUNC4(dev, 0x07, 0x0080); FUNC1(11);
	FUNC4(dev, 0x02, 0x088D); FUNC2(221);
	FUNC4(dev, 0x00, 0x0137); FUNC1(11);
	FUNC4(dev, 0x07, 0x0000); FUNC1(1);
	FUNC4(dev, 0x07, 0x0180); FUNC1(1);
	FUNC4(dev, 0x07, 0x0220); FUNC1(1);
	FUNC4(dev, 0x07, 0x03E0); FUNC1(1);
	FUNC4(dev, 0x06, 0x00C1); FUNC1(1);
	FUNC4(dev, 0x0A, 0x0001); FUNC1(1);
	if (priv->xtal_cal) {
		tmp = (priv->xtal_in << 4) | (priv->xtal_out << 1) |
		      (1 << 11) | (1 << 9);
		FUNC4(dev, 0x0F, tmp);
		FUNC14(dev->wiphy, "Xtal cal\n");
		FUNC1(1);
	} else {
		FUNC14(dev->wiphy, "NO Xtal cal\n");
		FUNC4(dev, 0x0F, 0x0ACC);
		FUNC1(1);
	}
	/* page 0 */
	FUNC4(dev, 0x00, 0x00BF); FUNC1(1);
	FUNC4(dev, 0x0D, 0x08DF); FUNC1(1);
	FUNC4(dev, 0x02, 0x004D); FUNC1(1);
	FUNC4(dev, 0x04, 0x0975); FUNC2(31);
	FUNC4(dev, 0x00, 0x0197); FUNC1(1);
	FUNC4(dev, 0x05, 0x05AB); FUNC1(1);

	FUNC4(dev, 0x00, 0x009F); FUNC1(1);
	FUNC4(dev, 0x01, 0x0000); FUNC1(1);
	FUNC4(dev, 0x02, 0x0000); FUNC1(1);
	/* power save parameters */
	/* TODO: move to dev.c */
	FUNC9(priv, FUNC0(0x024E),
		 FUNC8(priv, FUNC0(0x24E)) & 0x9F);
	FUNC10(dev, 0x00, 0xC8);
	FUNC10(dev, 0x06, 0x1C);
	FUNC10(dev, 0x10, 0x78);
	FUNC10(dev, 0x2E, 0xD0);
	FUNC10(dev, 0x2F, 0x06);
	FUNC10(dev, 0x01, 0x46);

	/* power control */
	FUNC9(priv, &priv->map->TX_GAIN_CCK, 0x10);
	FUNC9(priv, &priv->map->TX_GAIN_OFDM, 0x1B);

	FUNC9(priv, &priv->map->TX_ANTENNA, 0x03);
	FUNC11(dev, 0x00, 0x12);

	FUNC12(dev);

	FUNC11(dev, 0x10, 0x00);

	FUNC6(dev);

	/* turn on RF */
	FUNC4(dev, 0x00, 0x009F); FUNC13(500);
	FUNC4(dev, 0x04, 0x0972); FUNC13(500);
	/* turn on RF again */
	FUNC4(dev, 0x00, 0x009F); FUNC13(500);
	FUNC4(dev, 0x04, 0x0972); FUNC13(500);
	/* turn on BB */
	FUNC11(dev, 0x10, 0x40);
	FUNC11(dev, 0x12, 0x40);

	FUNC5(dev, 4);
}