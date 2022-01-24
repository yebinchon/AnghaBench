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
struct se_session {TYPE_1__* se_node_acl; } ;
struct scsiback_tpg {scalar_t__ tv_tpg_port_count; scalar_t__ tv_tpg_fe_count; int /*<<< orphan*/  tv_tpg_mutex; struct scsiback_nexus* tpg_nexus; int /*<<< orphan*/  tport; } ;
struct scsiback_nexus {struct se_session* tvn_se_sess; } ;
struct TYPE_2__ {int /*<<< orphan*/  initiatorname; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct scsiback_nexus*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct se_session*) ; 

__attribute__((used)) static int FUNC7(struct scsiback_tpg *tpg)
{
	struct se_session *se_sess;
	struct scsiback_nexus *tv_nexus;

	FUNC1(&tpg->tv_tpg_mutex);
	tv_nexus = tpg->tpg_nexus;
	if (!tv_nexus) {
		FUNC2(&tpg->tv_tpg_mutex);
		return -ENODEV;
	}

	se_sess = tv_nexus->tvn_se_sess;
	if (!se_sess) {
		FUNC2(&tpg->tv_tpg_mutex);
		return -ENODEV;
	}

	if (tpg->tv_tpg_port_count != 0) {
		FUNC2(&tpg->tv_tpg_mutex);
		FUNC4("Unable to remove xen-pvscsi I_T Nexus with active TPG port count: %d\n",
			tpg->tv_tpg_port_count);
		return -EBUSY;
	}

	if (tpg->tv_tpg_fe_count != 0) {
		FUNC2(&tpg->tv_tpg_mutex);
		FUNC4("Unable to remove xen-pvscsi I_T Nexus with active TPG frontend count: %d\n",
			tpg->tv_tpg_fe_count);
		return -EBUSY;
	}

	FUNC3("Removing I_T Nexus to emulated %s Initiator Port: %s\n",
		FUNC5(tpg->tport),
		tv_nexus->tvn_se_sess->se_node_acl->initiatorname);

	/*
	 * Release the SCSI I_T Nexus to the emulated xen-pvscsi Target Port
	 */
	FUNC6(se_sess);
	tpg->tpg_nexus = NULL;
	FUNC2(&tpg->tv_tpg_mutex);

	FUNC0(tv_nexus);
	return 0;
}