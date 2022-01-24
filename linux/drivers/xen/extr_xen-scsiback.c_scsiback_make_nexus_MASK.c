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
struct vscsibk_pend {int dummy; } ;
struct scsiback_tpg {int /*<<< orphan*/  tv_tpg_mutex; int /*<<< orphan*/  se_tpg; scalar_t__ tpg_nexus; } ;
struct scsiback_nexus {int /*<<< orphan*/  tvn_se_sess; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_PROT_NORMAL ; 
 int /*<<< orphan*/  VSCSI_DEFAULT_SESSION_TAGS ; 
 int /*<<< orphan*/  FUNC1 (struct scsiback_nexus*) ; 
 struct scsiback_nexus* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  scsiback_alloc_sess_cb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char const*,struct scsiback_nexus*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct scsiback_tpg *tpg,
				const char *name)
{
	struct scsiback_nexus *tv_nexus;
	int ret = 0;

	FUNC3(&tpg->tv_tpg_mutex);
	if (tpg->tpg_nexus) {
		FUNC5("tpg->tpg_nexus already exists\n");
		ret = -EEXIST;
		goto out_unlock;
	}

	tv_nexus = FUNC2(sizeof(struct scsiback_nexus), GFP_KERNEL);
	if (!tv_nexus) {
		ret = -ENOMEM;
		goto out_unlock;
	}

	tv_nexus->tvn_se_sess = FUNC6(&tpg->se_tpg,
						     VSCSI_DEFAULT_SESSION_TAGS,
						     sizeof(struct vscsibk_pend),
						     TARGET_PROT_NORMAL, name,
						     tv_nexus, scsiback_alloc_sess_cb);
	if (FUNC0(tv_nexus->tvn_se_sess)) {
		FUNC1(tv_nexus);
		ret = -ENOMEM;
		goto out_unlock;
	}

out_unlock:
	FUNC4(&tpg->tv_tpg_mutex);
	return ret;
}