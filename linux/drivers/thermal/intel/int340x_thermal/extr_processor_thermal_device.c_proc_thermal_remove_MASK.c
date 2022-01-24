#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct proc_thermal_device {TYPE_2__* dev; int /*<<< orphan*/  int340x_zone; TYPE_1__* adev; } ;
struct TYPE_6__ {int /*<<< orphan*/  attr; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ dev_attr_tcc_offset_degree_celsius ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  power_limit_attribute_group ; 
 int /*<<< orphan*/  proc_thermal_notify ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct proc_thermal_device *proc_priv)
{
	FUNC0(proc_priv->adev->handle,
				   ACPI_DEVICE_NOTIFY, proc_thermal_notify);
	FUNC1(proc_priv->int340x_zone);
	FUNC2(&proc_priv->dev->kobj, &dev_attr_tcc_offset_degree_celsius.attr);
	FUNC3(&proc_priv->dev->kobj,
			   &power_limit_attribute_group);
}