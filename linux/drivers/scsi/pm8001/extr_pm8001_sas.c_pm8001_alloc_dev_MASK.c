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
typedef  size_t u32 ;
struct pm8001_hba_info {struct pm8001_device* devices; } ;
struct pm8001_device {scalar_t__ dev_type; size_t id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 size_t PM8001_MAX_DEVICES ; 
 scalar_t__ SAS_PHY_UNUSED ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 

__attribute__((used)) static struct pm8001_device *FUNC2(struct pm8001_hba_info *pm8001_ha)
{
	u32 dev;
	for (dev = 0; dev < PM8001_MAX_DEVICES; dev++) {
		if (pm8001_ha->devices[dev].dev_type == SAS_PHY_UNUSED) {
			pm8001_ha->devices[dev].id = dev;
			return &pm8001_ha->devices[dev];
		}
	}
	if (dev == PM8001_MAX_DEVICES) {
		FUNC0(pm8001_ha,
			FUNC1("max support %d devices, ignore ..\n",
			PM8001_MAX_DEVICES));
	}
	return NULL;
}