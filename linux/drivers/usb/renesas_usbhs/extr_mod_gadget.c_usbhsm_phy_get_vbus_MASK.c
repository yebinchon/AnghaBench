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
struct usbhsg_gpriv {int vbus_active; } ;
struct usbhs_priv {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct usbhs_priv* FUNC0 (struct platform_device*) ; 
 struct usbhsg_gpriv* FUNC1 (struct usbhs_priv*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct usbhs_priv *priv = FUNC0(pdev);
	struct usbhsg_gpriv *gpriv = FUNC1(priv);

	return  gpriv->vbus_active;
}