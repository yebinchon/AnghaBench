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
struct thermal_hw_event {int /*<<< orphan*/  rht_lht; int /*<<< orphan*/  thermal_event; } ;
struct pm8001_hba_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
	struct thermal_hw_event *pPayload =
		(struct thermal_hw_event *)(piomb + 4);

	u32 thermal_event = FUNC1(pPayload->thermal_event);
	u32 rht_lht = FUNC1(pPayload->rht_lht);

	if (thermal_event & 0x40) {
		FUNC0(pm8001_ha, FUNC2(
			"Thermal Event: Local high temperature violated!\n"));
		FUNC0(pm8001_ha, FUNC2(
			"Thermal Event: Measured local high temperature %d\n",
				((rht_lht & 0xFF00) >> 8)));
	}
	if (thermal_event & 0x10) {
		FUNC0(pm8001_ha, FUNC2(
			"Thermal Event: Remote high temperature violated!\n"));
		FUNC0(pm8001_ha, FUNC2(
			"Thermal Event: Measured remote high temperature %d\n",
				((rht_lht & 0xFF000000) >> 24)));
	}
	return 0;
}