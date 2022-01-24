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
struct tcm_loop_tpg {struct tcm_loop_nexus* tl_nexus; int /*<<< orphan*/  tl_hba; int /*<<< orphan*/  tl_tpg_port_count; } ;
struct tcm_loop_nexus {struct se_session* se_sess; } ;
struct se_session {TYPE_1__* se_node_acl; } ;
struct TYPE_2__ {int /*<<< orphan*/  initiatorname; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tcm_loop_nexus*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct se_session*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
	struct tcm_loop_tpg *tpg)
{
	struct se_session *se_sess;
	struct tcm_loop_nexus *tl_nexus;

	tl_nexus = tpg->tl_nexus;
	if (!tl_nexus)
		return -ENODEV;

	se_sess = tl_nexus->se_sess;
	if (!se_sess)
		return -ENODEV;

	if (FUNC0(&tpg->tl_tpg_port_count)) {
		FUNC3("Unable to remove TCM_Loop I_T Nexus with active TPG port count: %d\n",
		       FUNC0(&tpg->tl_tpg_port_count));
		return -EPERM;
	}

	FUNC2("TCM_Loop_ConfigFS: Removing I_T Nexus to emulated %s Initiator Port: %s\n",
		 FUNC5(tpg->tl_hba),
		 tl_nexus->se_sess->se_node_acl->initiatorname);
	/*
	 * Release the SCSI I_T Nexus to the emulated Target Port
	 */
	FUNC4(se_sess);
	tpg->tl_nexus = NULL;
	FUNC1(tl_nexus);
	return 0;
}