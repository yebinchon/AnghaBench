#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct int3403_sensor {int /*<<< orphan*/  int340x_zone; } ;
struct int3403_priv {TYPE_2__* adev; struct int3403_sensor* priv; TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 struct int3403_sensor* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  int3403_notify ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct int3403_priv *priv)
{
	int result = 0;
	struct int3403_sensor *obj;

	obj = FUNC3(&priv->pdev->dev, sizeof(*obj), GFP_KERNEL);
	if (!obj)
		return -ENOMEM;

	priv->priv = obj;

	obj->int340x_zone = FUNC4(priv->adev, NULL);
	if (FUNC0(obj->int340x_zone))
		return FUNC1(obj->int340x_zone);

	result = FUNC2(priv->adev->handle,
			ACPI_DEVICE_NOTIFY, int3403_notify,
			(void *)priv);
	if (result)
		goto err_free_obj;

	return 0;

 err_free_obj:
	FUNC5(obj->int340x_zone);
	return result;
}