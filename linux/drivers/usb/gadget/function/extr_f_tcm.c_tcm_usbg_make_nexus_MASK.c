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
struct usbg_tpg {int /*<<< orphan*/  tpg_mutex; int /*<<< orphan*/  se_tpg; scalar_t__ tpg_nexus; } ;
struct usbg_cmd {int dummy; } ;
struct tcm_usbg_nexus {int /*<<< orphan*/  tvn_se_sess; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAKE_NEXUS_MSG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_PROT_NORMAL ; 
 int /*<<< orphan*/  USB_G_DEFAULT_SESSION_TAGS ; 
 int /*<<< orphan*/  FUNC2 (struct tcm_usbg_nexus*) ; 
 struct tcm_usbg_nexus* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,struct tcm_usbg_nexus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usbg_alloc_sess_cb ; 

__attribute__((used)) static int FUNC8(struct usbg_tpg *tpg, char *name)
{
	struct tcm_usbg_nexus *tv_nexus;
	int ret = 0;

	FUNC4(&tpg->tpg_mutex);
	if (tpg->tpg_nexus) {
		ret = -EEXIST;
		FUNC6("tpg->tpg_nexus already exists\n");
		goto out_unlock;
	}

	tv_nexus = FUNC3(sizeof(*tv_nexus), GFP_KERNEL);
	if (!tv_nexus) {
		ret = -ENOMEM;
		goto out_unlock;
	}

	tv_nexus->tvn_se_sess = FUNC7(&tpg->se_tpg,
						     USB_G_DEFAULT_SESSION_TAGS,
						     sizeof(struct usbg_cmd),
						     TARGET_PROT_NORMAL, name,
						     tv_nexus, usbg_alloc_sess_cb);
	if (FUNC0(tv_nexus->tvn_se_sess)) {
#define MAKE_NEXUS_MSG "core_tpg_check_initiator_node_acl() failed for %s\n"
		FUNC6(MAKE_NEXUS_MSG, name);
#undef MAKE_NEXUS_MSG
		ret = FUNC1(tv_nexus->tvn_se_sess);
		FUNC2(tv_nexus);
	}

out_unlock:
	FUNC5(&tpg->tpg_mutex);
	return ret;
}