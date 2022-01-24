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
struct dell_wmi_priv {int /*<<< orphan*/  input_dev; } ;

/* Variables and functions */
 struct dell_wmi_priv* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wmi_device *wdev)
{
	struct dell_wmi_priv *priv = FUNC0(&wdev->dev);

	FUNC1(priv->input_dev);
}