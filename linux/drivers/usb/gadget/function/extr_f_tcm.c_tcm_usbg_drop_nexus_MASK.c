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
struct usbg_tpg {int /*<<< orphan*/  tpg_mutex; struct tcm_usbg_nexus* tpg_nexus; int /*<<< orphan*/  tpg_port_count; } ;
struct tcm_usbg_nexus {struct se_session* tvn_se_sess; } ;
struct se_session {TYPE_1__* se_node_acl; } ;
struct TYPE_2__ {int /*<<< orphan*/  initiatorname; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPERM ; 
 int /*<<< orphan*/  MSG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tcm_usbg_nexus*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct se_session*) ; 

__attribute__((used)) static int FUNC7(struct usbg_tpg *tpg)
{
	struct se_session *se_sess;
	struct tcm_usbg_nexus *tv_nexus;
	int ret = -ENODEV;

	FUNC2(&tpg->tpg_mutex);
	tv_nexus = tpg->tpg_nexus;
	if (!tv_nexus)
		goto out;

	se_sess = tv_nexus->tvn_se_sess;
	if (!se_sess)
		goto out;

	if (FUNC0(&tpg->tpg_port_count)) {
		ret = -EPERM;
#define MSG "Unable to remove Host I_T Nexus with active TPG port count: %d\n"
		FUNC5(MSG, FUNC0(&tpg->tpg_port_count));
#undef MSG
		goto out;
	}

	FUNC4("Removing I_T Nexus to Initiator Port: %s\n",
			tv_nexus->tvn_se_sess->se_node_acl->initiatorname);
	/*
	 * Release the SCSI I_T Nexus to the emulated vHost Target Port
	 */
	FUNC6(se_sess);
	tpg->tpg_nexus = NULL;

	FUNC1(tv_nexus);
	ret = 0;
out:
	FUNC3(&tpg->tpg_mutex);
	return ret;
}