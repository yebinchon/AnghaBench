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
struct lpfc_vport {scalar_t__ cfg_enable_fc4_type; int /*<<< orphan*/  delayed_disc_tmo; int /*<<< orphan*/  fc_flag; int /*<<< orphan*/  fc_ns_retry; int /*<<< orphan*/  port_state; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCH_EVT_LINKDOWN ; 
 int /*<<< orphan*/  FC_DISC_DELAYED ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_ELS_CMD ; 
 scalar_t__ LPFC_ENABLE_NVME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*) ; 
 struct Scsi_Host* FUNC5 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct lpfc_vport *vport)
{
	struct Scsi_Host  *shost = FUNC5(vport);

	if (vport->cfg_enable_fc4_type != LPFC_ENABLE_NVME)
		FUNC2(shost, FUNC1(),
				   FCH_EVT_LINKDOWN, 0);

	FUNC3(vport, LPFC_DISC_TRC_ELS_CMD,
		"Link Down:       state:x%x rtry:x%x flg:x%x",
		vport->port_state, vport->fc_ns_retry, vport->fc_flag);

	FUNC4(vport);

	/* Stop delayed Nport discovery */
	FUNC6(shost->host_lock);
	vport->fc_flag &= ~FC_DISC_DELAYED;
	FUNC7(shost->host_lock);
	FUNC0(&vport->delayed_disc_tmo);
}