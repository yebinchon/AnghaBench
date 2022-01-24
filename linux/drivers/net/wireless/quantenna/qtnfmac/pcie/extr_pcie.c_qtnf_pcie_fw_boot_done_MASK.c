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
struct qtnf_bus {int /*<<< orphan*/  fw_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  QTNF_FW_STATE_BOOT_DONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  qtnf_dbg_mps_show ; 
 int /*<<< orphan*/  qtnf_dbg_msi_show ; 
 int /*<<< orphan*/  qtnf_dbg_shm_stats ; 
 int /*<<< orphan*/  FUNC2 (struct qtnf_bus*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qtnf_bus*,int /*<<< orphan*/ ) ; 

int FUNC4(struct qtnf_bus *bus)
{
	int ret;

	bus->fw_state = QTNF_FW_STATE_BOOT_DONE;
	ret = FUNC1(bus);
	if (ret) {
		FUNC0("failed to attach core\n");
	} else {
		FUNC3(bus, DRV_NAME);
		FUNC2(bus, "mps", qtnf_dbg_mps_show);
		FUNC2(bus, "msi_enabled", qtnf_dbg_msi_show);
		FUNC2(bus, "shm_stats", qtnf_dbg_shm_stats);
	}

	return ret;
}