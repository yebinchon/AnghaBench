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
struct TYPE_2__ {unsigned int ql_proto_ver; unsigned int num_mac; } ;
struct qtnf_bus {int /*<<< orphan*/  fw_state; TYPE_1__ hw_info; int /*<<< orphan*/  event_work; int /*<<< orphan*/  hprio_workqueue; int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int QLINK_PROTO_VER ; 
 int /*<<< orphan*/  QTNF_FW_STATE_ACTIVE ; 
 int /*<<< orphan*/  QTNF_FW_STATE_RUNNING ; 
 unsigned int QTNF_MAX_MAC ; 
 int /*<<< orphan*/  WQ_HIGHPRI ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct qtnf_bus*) ; 
 int FUNC5 (struct qtnf_bus*) ; 
 int FUNC6 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC7 (struct qtnf_bus*) ; 
 int FUNC8 (struct qtnf_bus*,unsigned int) ; 
 int /*<<< orphan*/  qtnf_event_work_handler ; 
 int /*<<< orphan*/  FUNC9 (struct qtnf_bus*) ; 

int FUNC10(struct qtnf_bus *bus)
{
	unsigned int i;
	int ret;

	FUNC9(bus);
	FUNC4(bus);

	bus->workqueue = FUNC1("QTNF_BUS", 0);
	if (!bus->workqueue) {
		FUNC3("failed to alloc main workqueue\n");
		ret = -ENOMEM;
		goto error;
	}

	bus->hprio_workqueue = FUNC2("QTNF_HPRI", WQ_HIGHPRI, 0);
	if (!bus->hprio_workqueue) {
		FUNC3("failed to alloc high prio workqueue\n");
		ret = -ENOMEM;
		goto error;
	}

	FUNC0(&bus->event_work, qtnf_event_work_handler);

	ret = FUNC6(bus);
	if (ret) {
		FUNC3("failed to init FW: %d\n", ret);
		goto error;
	}

	bus->fw_state = QTNF_FW_STATE_ACTIVE;
	ret = FUNC5(bus);
	if (ret) {
		FUNC3("failed to get HW info: %d\n", ret);
		goto error;
	}

	if (bus->hw_info.ql_proto_ver != QLINK_PROTO_VER) {
		FUNC3("qlink version mismatch %u != %u\n",
		       QLINK_PROTO_VER, bus->hw_info.ql_proto_ver);
		ret = -EPROTONOSUPPORT;
		goto error;
	}

	if (bus->hw_info.num_mac > QTNF_MAX_MAC) {
		FUNC3("no support for number of MACs=%u\n",
		       bus->hw_info.num_mac);
		ret = -ERANGE;
		goto error;
	}

	for (i = 0; i < bus->hw_info.num_mac; i++) {
		ret = FUNC8(bus, i);

		if (ret) {
			FUNC3("MAC%u: attach failed: %d\n", i, ret);
			goto error;
		}
	}

	bus->fw_state = QTNF_FW_STATE_RUNNING;
	return 0;

error:
	FUNC7(bus);
	return ret;
}