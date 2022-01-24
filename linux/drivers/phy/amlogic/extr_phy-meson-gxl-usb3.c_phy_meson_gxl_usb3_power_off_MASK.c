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
 int /*<<< orphan*/  USB_R5 ; 
 int /*<<< orphan*/  USB_R5_ID_DIG_EN_0 ; 
 int /*<<< orphan*/  USB_R5_ID_DIG_EN_1 ; 
 struct phy_meson_gxl_usb3_priv* FUNC0 (struct phy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy *phy)
{
	struct phy_meson_gxl_usb3_priv *priv = FUNC0(phy);

	FUNC1(priv->regmap, USB_R5, USB_R5_ID_DIG_EN_0, 0);
	FUNC1(priv->regmap, USB_R5, USB_R5_ID_DIG_EN_1, 0);

	return 0;
}