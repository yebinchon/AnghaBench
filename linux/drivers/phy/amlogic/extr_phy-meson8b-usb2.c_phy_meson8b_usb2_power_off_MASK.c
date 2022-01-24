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
struct phy_meson8b_usb2_priv {int /*<<< orphan*/  clk_usb_general; int /*<<< orphan*/  clk_usb; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct phy_meson8b_usb2_priv* FUNC1 (struct phy*) ; 

__attribute__((used)) static int FUNC2(struct phy *phy)
{
	struct phy_meson8b_usb2_priv *priv = FUNC1(phy);

	FUNC0(priv->clk_usb);
	FUNC0(priv->clk_usb_general);

	return 0;
}