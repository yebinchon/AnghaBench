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
struct scsi_qla_host {int /*<<< orphan*/  nvme_del_done; scalar_t__ nvme_local_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_NVME_FC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct scsi_qla_host *vha)
{
	int nv_ret;

	if (!FUNC0(CONFIG_NVME_FC))
		return;

	if (vha->nvme_local_port) {
		FUNC1(&vha->nvme_del_done);
		FUNC3(ql_log_info, vha, 0x2116,
			"unregister localport=%p\n",
			vha->nvme_local_port);
		nv_ret = FUNC2(vha->nvme_local_port);
		if (nv_ret)
			FUNC3(ql_log_info, vha, 0x2115,
			    "Unregister of localport failed\n");
		else
			FUNC4(&vha->nvme_del_done);
	}
}