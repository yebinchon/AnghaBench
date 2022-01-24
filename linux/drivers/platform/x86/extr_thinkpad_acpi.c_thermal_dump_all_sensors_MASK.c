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
struct ibm_thermal_sensors_struct {int* temp; } ;

/* Variables and functions */
 int TPACPI_THERMAL_SENSOR_NA ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct ibm_thermal_sensors_struct*) ; 

__attribute__((used)) static void FUNC3(void)
{
	int n, i;
	struct ibm_thermal_sensors_struct t;

	n = FUNC2(&t);
	if (n <= 0)
		return;

	FUNC1("temperatures (Celsius):");

	for (i = 0; i < n; i++) {
		if (t.temp[i] != TPACPI_THERMAL_SENSOR_NA)
			FUNC0(" %d", (int)(t.temp[i] / 1000));
		else
			FUNC0(" N/A");
	}

	FUNC0("\n");
}