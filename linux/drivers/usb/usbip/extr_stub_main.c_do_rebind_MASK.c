#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bus_id_priv {TYPE_1__* udev; } ;
struct TYPE_5__ {scalar_t__ parent; } ;
struct TYPE_4__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(char *busid, struct bus_id_priv *busid_priv)
{
	int ret = 0;

	/* device_attach() callers should hold parent lock for USB */
	if (busid_priv->udev->dev.parent)
		FUNC2(busid_priv->udev->dev.parent);
	ret = FUNC1(&busid_priv->udev->dev);
	if (busid_priv->udev->dev.parent)
		FUNC3(busid_priv->udev->dev.parent);
	if (ret < 0)
		FUNC0(&busid_priv->udev->dev, "rebind failed\n");
	return ret;
}