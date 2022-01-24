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
struct usbhs_priv {int /*<<< orphan*/  notify_hotplug_work; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  detection_delay ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 
 struct usbhs_priv* FUNC3 (struct platform_device*) ; 

int FUNC4(struct platform_device *pdev)
{
	struct usbhs_priv *priv = FUNC3(pdev);
	int delay = FUNC2(priv, detection_delay);

	/*
	 * This functions will be called in interrupt.
	 * To make sure safety context,
	 * use workqueue for usbhs_notify_hotplug
	 */
	FUNC1(&priv->notify_hotplug_work,
			      FUNC0(delay));
	return 0;
}