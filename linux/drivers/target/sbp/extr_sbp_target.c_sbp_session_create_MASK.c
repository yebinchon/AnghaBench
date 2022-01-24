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
typedef  int /*<<< orphan*/  u64 ;
struct sbp_tpg {int /*<<< orphan*/  se_tpg; } ;
struct sbp_target_request {int dummy; } ;
struct sbp_session {int /*<<< orphan*/  se_sess; int /*<<< orphan*/  guid; int /*<<< orphan*/  maint_work; int /*<<< orphan*/  login_list; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  guid_str ;

/* Variables and functions */
 int ENOMEM ; 
 struct sbp_session* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_PROT_NORMAL ; 
 int /*<<< orphan*/  FUNC5 (struct sbp_session*) ; 
 struct sbp_session* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  session_maintenance_work ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,char*,struct sbp_session*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sbp_session *FUNC11(
		struct sbp_tpg *tpg,
		u64 guid)
{
	struct sbp_session *sess;
	int ret;
	char guid_str[17];

	FUNC8(guid_str, sizeof(guid_str), "%016llx", guid);

	sess = FUNC6(sizeof(*sess), GFP_KERNEL);
	if (!sess)
		return FUNC0(-ENOMEM);

	FUNC9(&sess->lock);
	FUNC2(&sess->login_list);
	FUNC1(&sess->maint_work, session_maintenance_work);
	sess->guid = guid;

	sess->se_sess = FUNC10(&tpg->se_tpg, 128,
					     sizeof(struct sbp_target_request),
					     TARGET_PROT_NORMAL, guid_str,
					     sess, NULL);
	if (FUNC3(sess->se_sess)) {
		FUNC7("failed to init se_session\n");
		ret = FUNC4(sess->se_sess);
		FUNC5(sess);
		return FUNC0(ret);
	}

	return sess;
}