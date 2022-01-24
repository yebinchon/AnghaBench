#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct wmi_device {TYPE_1__ dev; } ;
struct bmof_priv {int /*<<< orphan*/  bmofdata; int /*<<< orphan*/  bmof_bin_attr; } ;

/* Variables and functions */
 struct bmof_priv* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct wmi_device *wdev)
{
	struct bmof_priv *priv = FUNC0(&wdev->dev);

	FUNC2(&wdev->dev.kobj, &priv->bmof_bin_attr);
	FUNC1(priv->bmofdata);
	return 0;
}