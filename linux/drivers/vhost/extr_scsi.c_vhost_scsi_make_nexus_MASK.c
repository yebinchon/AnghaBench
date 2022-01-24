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
struct vhost_scsi_tpg {int /*<<< orphan*/  tv_tpg_mutex; struct vhost_scsi_nexus* tpg_nexus; int /*<<< orphan*/  se_tpg; } ;
struct vhost_scsi_nexus {int /*<<< orphan*/  tvn_se_sess; } ;
struct vhost_scsi_cmd {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int TARGET_PROT_DIN_PASS ; 
 int TARGET_PROT_DOUT_PASS ; 
 int /*<<< orphan*/  VHOST_SCSI_DEFAULT_TAGS ; 
 int /*<<< orphan*/  FUNC1 (struct vhost_scsi_nexus*) ; 
 struct vhost_scsi_nexus* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,unsigned char*,struct vhost_scsi_nexus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vhost_scsi_nexus_cb ; 

__attribute__((used)) static int FUNC8(struct vhost_scsi_tpg *tpg,
				const char *name)
{
	struct vhost_scsi_nexus *tv_nexus;

	FUNC3(&tpg->tv_tpg_mutex);
	if (tpg->tpg_nexus) {
		FUNC4(&tpg->tv_tpg_mutex);
		FUNC5("tpg->tpg_nexus already exists\n");
		return -EEXIST;
	}

	tv_nexus = FUNC2(sizeof(*tv_nexus), GFP_KERNEL);
	if (!tv_nexus) {
		FUNC4(&tpg->tv_tpg_mutex);
		FUNC6("Unable to allocate struct vhost_scsi_nexus\n");
		return -ENOMEM;
	}
	/*
	 * Since we are running in 'demo mode' this call with generate a
	 * struct se_node_acl for the vhost_scsi struct se_portal_group with
	 * the SCSI Initiator port name of the passed configfs group 'name'.
	 */
	tv_nexus->tvn_se_sess = FUNC7(&tpg->se_tpg,
					VHOST_SCSI_DEFAULT_TAGS,
					sizeof(struct vhost_scsi_cmd),
					TARGET_PROT_DIN_PASS | TARGET_PROT_DOUT_PASS,
					(unsigned char *)name, tv_nexus,
					vhost_scsi_nexus_cb);
	if (FUNC0(tv_nexus->tvn_se_sess)) {
		FUNC4(&tpg->tv_tpg_mutex);
		FUNC1(tv_nexus);
		return -ENOMEM;
	}
	tpg->tpg_nexus = tv_nexus;

	FUNC4(&tpg->tv_tpg_mutex);
	return 0;
}