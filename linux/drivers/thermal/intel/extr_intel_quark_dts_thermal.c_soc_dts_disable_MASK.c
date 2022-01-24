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
typedef  int u32 ;
struct thermal_zone_device {struct soc_sensor_entry* devdata; } ;
struct soc_sensor_entry {void* mode; int /*<<< orphan*/  locked; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  MBI_REG_READ ; 
 int /*<<< orphan*/  MBI_REG_WRITE ; 
 int QRK_DTS_ENABLE_BIT ; 
 int /*<<< orphan*/  QRK_DTS_REG_OFFSET_ENABLE ; 
 int /*<<< orphan*/  QRK_MBI_UNIT_RMU ; 
 void* THERMAL_DEVICE_DISABLED ; 
 void* THERMAL_DEVICE_ENABLED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct thermal_zone_device *tzd)
{
	u32 out;
	struct soc_sensor_entry *aux_entry = tzd->devdata;
	int ret;

	ret = FUNC0(QRK_MBI_UNIT_RMU, MBI_REG_READ,
			    QRK_DTS_REG_OFFSET_ENABLE, &out);
	if (ret)
		return ret;

	if (!(out & QRK_DTS_ENABLE_BIT)) {
		aux_entry->mode = THERMAL_DEVICE_DISABLED;
		return 0;
	}

	if (!aux_entry->locked) {
		out &= ~QRK_DTS_ENABLE_BIT;
		ret = FUNC1(QRK_MBI_UNIT_RMU, MBI_REG_WRITE,
				     QRK_DTS_REG_OFFSET_ENABLE, out);

		if (ret)
			return ret;

		aux_entry->mode = THERMAL_DEVICE_DISABLED;
	} else {
		aux_entry->mode = THERMAL_DEVICE_ENABLED;
		FUNC2("DTS is locked. Cannot disable DTS\n");
		ret = -EPERM;
	}

	return ret;
}