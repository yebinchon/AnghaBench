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
typedef  int u32 ;
struct int3403_sensor {int /*<<< orphan*/  int340x_zone; } ;
struct int3403_priv {scalar_t__ type; TYPE_1__* pdev; struct int3403_sensor* priv; } ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  INT3403_PERF_CHANGED_EVENT 130 
#define  INT3403_PERF_TRIP_POINT_CHANGED 129 
#define  INT3403_THERMAL_EVENT 128 
 scalar_t__ INT3403_TYPE_SENSOR ; 
 int /*<<< orphan*/  THERMAL_TRIP_CHANGED ; 
 int /*<<< orphan*/  THERMAL_TRIP_VIOLATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(acpi_handle handle,
		u32 event, void *data)
{
	struct int3403_priv *priv = data;
	struct int3403_sensor *obj;

	if (!priv)
		return;

	obj = priv->priv;
	if (priv->type != INT3403_TYPE_SENSOR || !obj)
		return;

	switch (event) {
	case INT3403_PERF_CHANGED_EVENT:
		break;
	case INT3403_THERMAL_EVENT:
		FUNC2(obj->int340x_zone,
						   THERMAL_TRIP_VIOLATED);
		break;
	case INT3403_PERF_TRIP_POINT_CHANGED:
		FUNC1(obj->int340x_zone);
		FUNC2(obj->int340x_zone,
						   THERMAL_TRIP_CHANGED);
		break;
	default:
		FUNC0(&priv->pdev->dev, "Unsupported event [0x%x]\n", event);
		break;
	}
}