#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct iscsi_tiqn {int tiqn_index; int /*<<< orphan*/  tiqn; int /*<<< orphan*/  tiqn_list; int /*<<< orphan*/  tiqn_state; TYPE_3__ logout_stats; TYPE_2__ login_stats; TYPE_1__ sess_err_stats; int /*<<< orphan*/  tiqn_tpg_lock; int /*<<< orphan*/  tiqn_state_lock; int /*<<< orphan*/  tiqn_tpg_list; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct iscsi_tiqn* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ ISCSI_IQN_LEN ; 
 int /*<<< orphan*/  TIQN_STATE_ACTIVE ; 
 int /*<<< orphan*/  g_tiqn_list ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_tiqn*) ; 
 struct iscsi_tiqn* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,unsigned char*) ; 
 scalar_t__ FUNC14 (unsigned char*) ; 
 int /*<<< orphan*/  tiqn_idr ; 
 int /*<<< orphan*/  tiqn_lock ; 

struct iscsi_tiqn *FUNC15(unsigned char *buf)
{
	struct iscsi_tiqn *tiqn = NULL;
	int ret;

	if (FUNC14(buf) >= ISCSI_IQN_LEN) {
		FUNC9("Target IQN exceeds %d bytes\n",
				ISCSI_IQN_LEN);
		return FUNC0(-EINVAL);
	}

	tiqn = FUNC6(sizeof(*tiqn), GFP_KERNEL);
	if (!tiqn)
		return FUNC0(-ENOMEM);

	FUNC13(tiqn->tiqn, "%s", buf);
	FUNC1(&tiqn->tiqn_list);
	FUNC1(&tiqn->tiqn_tpg_list);
	FUNC11(&tiqn->tiqn_state_lock);
	FUNC11(&tiqn->tiqn_tpg_lock);
	FUNC11(&tiqn->sess_err_stats.lock);
	FUNC11(&tiqn->login_stats.lock);
	FUNC11(&tiqn->logout_stats.lock);

	tiqn->tiqn_state = TIQN_STATE_ACTIVE;

	FUNC3(GFP_KERNEL);
	FUNC10(&tiqn_lock);

	ret = FUNC2(&tiqn_idr, NULL, 0, 0, GFP_NOWAIT);
	if (ret < 0) {
		FUNC9("idr_alloc() failed for tiqn->tiqn_index\n");
		FUNC12(&tiqn_lock);
		FUNC4();
		FUNC5(tiqn);
		return FUNC0(ret);
	}
	tiqn->tiqn_index = ret;
	FUNC7(&tiqn->tiqn_list, &g_tiqn_list);

	FUNC12(&tiqn_lock);
	FUNC4();

	FUNC8("CORE[0] - Added iSCSI Target IQN: %s\n", tiqn->tiqn);

	return tiqn;

}