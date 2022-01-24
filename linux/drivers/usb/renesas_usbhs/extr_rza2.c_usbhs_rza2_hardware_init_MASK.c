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
struct usbhs_priv {struct phy* phy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 struct phy* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct usbhs_priv* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct usbhs_priv *priv = FUNC3(pdev);
	struct phy *phy = FUNC2(&pdev->dev, "usb");

	if (FUNC0(phy))
		return FUNC1(phy);

	priv->phy = phy;
	return 0;
}