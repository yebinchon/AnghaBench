#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct MPT3SAS_ADAPTER {scalar_t__ temp_sensors_count; } ;
struct TYPE_3__ {scalar_t__ SensorNum; int /*<<< orphan*/  CurrentTemperature; int /*<<< orphan*/  Status; } ;
typedef  TYPE_1__ Mpi2EventDataTemperature_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,char*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct MPT3SAS_ADAPTER *ioc,
	Mpi2EventDataTemperature_t *event_data)
{
	if (ioc->temp_sensors_count >= event_data->SensorNum) {
		FUNC0(ioc, "Temperature Threshold flags %s%s%s%s exceeded for Sensor: %d !!!\n",
			FUNC1(event_data->Status) & 0x1 ? "0 " : " ",
			FUNC1(event_data->Status) & 0x2 ? "1 " : " ",
			FUNC1(event_data->Status) & 0x4 ? "2 " : " ",
			FUNC1(event_data->Status) & 0x8 ? "3 " : " ",
			event_data->SensorNum);
		FUNC0(ioc, "Current Temp In Celsius: %d\n",
			event_data->CurrentTemperature);
	}
}