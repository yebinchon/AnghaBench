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
struct scsi_qla_host {int /*<<< orphan*/  nvme_del_done; int /*<<< orphan*/ * nvme_local_port; } ;
struct nvme_fc_local_port {struct scsi_qla_host* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ql_log_info ; 

__attribute__((used)) static void FUNC2(struct nvme_fc_local_port *lport)
{
	struct scsi_qla_host *vha = lport->private;

	FUNC1(ql_log_info, vha, 0x210f,
	    "localport delete of %p completed.\n", vha->nvme_local_port);
	vha->nvme_local_port = NULL;
	FUNC0(&vha->nvme_del_done);
}