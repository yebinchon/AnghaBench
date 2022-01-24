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
struct imx_thermal_data {int alarm_temp; TYPE_1__* tz; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  THERMAL_EVENT_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev)
{
	struct imx_thermal_data *data = dev;

	FUNC0(&data->tz->device, "THERMAL ALARM: T > %d\n",
		data->alarm_temp / 1000);

	FUNC1(data->tz, THERMAL_EVENT_UNSPECIFIED);

	return IRQ_HANDLED;
}