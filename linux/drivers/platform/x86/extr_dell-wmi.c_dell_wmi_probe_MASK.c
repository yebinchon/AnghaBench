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
struct wmi_device {int /*<<< orphan*/  dev; } ;
struct dell_wmi_priv {int /*<<< orphan*/  interface_version; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct wmi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct dell_wmi_priv*) ; 
 struct dell_wmi_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct wmi_device *wdev, const void *context)
{
	struct dell_wmi_priv *priv;
	int ret;

	ret = FUNC0();
	if (ret)
		return ret;

	priv = FUNC4(
		&wdev->dev, sizeof(struct dell_wmi_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	FUNC3(&wdev->dev, priv);

	if (!FUNC1(&priv->interface_version))
		return -EPROBE_DEFER;

	return FUNC2(wdev);
}