#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct phy_meson_gxl_usb3_priv {int /*<<< orphan*/  regmap; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USB_R5 ; 
 int /*<<< orphan*/  USB_R5_ID_DIG_EN_0 ; 
 int /*<<< orphan*/  USB_R5_ID_DIG_EN_1 ; 
 int /*<<< orphan*/  USB_R5_ID_DIG_TH_MASK ; 
 struct phy_meson_gxl_usb3_priv* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct phy_meson_gxl_usb3_priv *priv = FUNC1(phy);

	FUNC2(priv->regmap, USB_R5, USB_R5_ID_DIG_EN_0,
			   USB_R5_ID_DIG_EN_0);
	FUNC2(priv->regmap, USB_R5, USB_R5_ID_DIG_EN_1,
			   USB_R5_ID_DIG_EN_1);
	FUNC2(priv->regmap, USB_R5, USB_R5_ID_DIG_TH_MASK,
			   FUNC0(USB_R5_ID_DIG_TH_MASK, 0xff));

	return 0;
}