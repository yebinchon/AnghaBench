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
struct huawei_wmi_priv {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct huawei_wmi_priv*) ; 
 struct huawei_wmi_priv* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wmi_device*) ; 
 int FUNC3 (struct wmi_device*) ; 

__attribute__((used)) static int FUNC4(struct wmi_device *wdev, const void *context)
{
	struct huawei_wmi_priv *priv;
	int err;

	priv = FUNC1(&wdev->dev, sizeof(struct huawei_wmi_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC0(&wdev->dev, priv);

	err = FUNC2(wdev);
	if (err)
		return err;

	return FUNC3(wdev);
}