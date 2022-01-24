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
struct dwc3_meson_g12a {int /*<<< orphan*/  usb3_ports; int /*<<< orphan*/  dev; int /*<<< orphan*/  usb2_ports; int /*<<< orphan*/ * phys; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PHY_COUNT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int USB3_HOST_PHY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * phy_names ; 

__attribute__((used)) static int FUNC4(struct dwc3_meson_g12a *priv)
{
	int i;

	for (i = 0 ; i < PHY_COUNT ; ++i) {
		priv->phys[i] = FUNC3(priv->dev, phy_names[i]);
		if (!priv->phys[i])
			continue;

		if (FUNC0(priv->phys[i]))
			return FUNC1(priv->phys[i]);

		if (i == USB3_HOST_PHY)
			priv->usb3_ports++;
		else
			priv->usb2_ports++;
	}

	FUNC2(priv->dev, "USB2 ports: %d\n", priv->usb2_ports);
	FUNC2(priv->dev, "USB3 ports: %d\n", priv->usb3_ports);

	return 0;
}