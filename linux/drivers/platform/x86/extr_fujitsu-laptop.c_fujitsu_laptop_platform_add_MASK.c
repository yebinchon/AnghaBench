#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct fujitsu_laptop {TYPE_2__* pf_device; } ;
struct acpi_device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct fujitsu_laptop* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  fujitsu_pf_attribute_group ; 
 int FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct fujitsu_laptop*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct acpi_device *device)
{
	struct fujitsu_laptop *priv = FUNC0(device);
	int ret;

	priv->pf_device = FUNC2("fujitsu-laptop", -1);
	if (!priv->pf_device)
		return -ENOMEM;

	FUNC5(priv->pf_device, priv);

	ret = FUNC1(priv->pf_device);
	if (ret)
		goto err_put_platform_device;

	ret = FUNC6(&priv->pf_device->dev.kobj,
				 &fujitsu_pf_attribute_group);
	if (ret)
		goto err_del_platform_device;

	return 0;

err_del_platform_device:
	FUNC3(priv->pf_device);
err_put_platform_device:
	FUNC4(priv->pf_device);

	return ret;
}