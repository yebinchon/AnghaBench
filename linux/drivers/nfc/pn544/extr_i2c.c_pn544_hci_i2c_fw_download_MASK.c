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
typedef  int /*<<< orphan*/  u8 ;
struct pn544_i2c_phy {int /*<<< orphan*/  fw_work; int /*<<< orphan*/  fw_work_state; int /*<<< orphan*/  hw_variant; int /*<<< orphan*/  firmware_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_WORK_STATE_START ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC3(void *phy_id, const char *firmware_name,
					u8 hw_variant)
{
	struct pn544_i2c_phy *phy = phy_id;

	FUNC0("Starting Firmware Download (%s)\n", firmware_name);

	FUNC2(phy->firmware_name, firmware_name);

	phy->hw_variant = hw_variant;
	phy->fw_work_state = FW_WORK_STATE_START;

	FUNC1(&phy->fw_work);

	return 0;
}