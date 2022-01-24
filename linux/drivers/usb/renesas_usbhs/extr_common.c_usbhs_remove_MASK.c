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
struct usbhs_priv {int /*<<< orphan*/  rsts; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  hardware_exit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  runtime_pwctrl ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_priv*) ; 
 struct usbhs_priv* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct usbhs_priv*,int /*<<< orphan*/ ,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct usbhs_priv *priv = FUNC6(pdev);

	FUNC0(&pdev->dev, "usb remove\n");

	/* power off */
	if (!FUNC4(priv, runtime_pwctrl))
		FUNC10(priv, 0);

	FUNC1(&pdev->dev);

	FUNC8(priv, hardware_exit, pdev);
	FUNC9(priv);
	FUNC2(priv->rsts);
	FUNC5(priv);
	FUNC3(priv);
	FUNC7(priv);

	return 0;
}