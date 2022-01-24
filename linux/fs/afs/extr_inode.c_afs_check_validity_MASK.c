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
typedef  int time64_t ;
struct afs_volume {int /*<<< orphan*/  cb_v_break; } ;
struct afs_vnode {unsigned int cb_break; unsigned int cb_s_break; unsigned int cb_v_break; int cb_expires_at; int /*<<< orphan*/  cb_lock; int /*<<< orphan*/  fid; int /*<<< orphan*/  flags; int /*<<< orphan*/  cb_interest; struct afs_volume* volume; } ;
struct afs_server {int /*<<< orphan*/  cb_s_break; } ;
struct afs_cb_interest {int /*<<< orphan*/  server; } ;
typedef  enum afs_cb_break_reason { ____Placeholder_afs_cb_break_reason } afs_cb_break_reason ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VNODE_CB_PROMISED ; 
 int /*<<< orphan*/  AFS_VNODE_DELETED ; 
 int /*<<< orphan*/  AFS_VNODE_ZAP_DATA ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_vnode*,int) ; 
 int afs_cb_break_for_lapsed ; 
 int afs_cb_break_for_vsbreak ; 
 int afs_cb_break_for_zap ; 
 int afs_cb_break_no_break ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

bool FUNC11(struct afs_vnode *vnode)
{
	struct afs_cb_interest *cbi;
	struct afs_server *server;
	struct afs_volume *volume = vnode->volume;
	enum afs_cb_break_reason need_clear = afs_cb_break_no_break;
	time64_t now = FUNC3();
	bool valid;
	unsigned int cb_break, cb_s_break, cb_v_break;
	int seq = 0;

	do {
		FUNC6(&vnode->cb_lock, &seq);
		cb_v_break = FUNC0(volume->cb_v_break);
		cb_break = vnode->cb_break;

		if (FUNC7(AFS_VNODE_CB_PROMISED, &vnode->flags)) {
			cbi = FUNC5(vnode->cb_interest);
			server = FUNC5(cbi->server);
			cb_s_break = FUNC0(server->cb_s_break);

			if (vnode->cb_s_break != cb_s_break ||
			    vnode->cb_v_break != cb_v_break) {
				vnode->cb_s_break = cb_s_break;
				vnode->cb_v_break = cb_v_break;
				need_clear = afs_cb_break_for_vsbreak;
				valid = false;
			} else if (FUNC7(AFS_VNODE_ZAP_DATA, &vnode->flags)) {
				need_clear = afs_cb_break_for_zap;
				valid = false;
			} else if (vnode->cb_expires_at - 10 <= now) {
				need_clear = afs_cb_break_for_lapsed;
				valid = false;
			} else {
				valid = true;
			}
		} else if (FUNC7(AFS_VNODE_DELETED, &vnode->flags)) {
			valid = true;
		} else {
			vnode->cb_v_break = cb_v_break;
			valid = false;
		}

	} while (FUNC4(&vnode->cb_lock, seq));

	FUNC2(&vnode->cb_lock, seq);

	if (need_clear != afs_cb_break_no_break) {
		FUNC9(&vnode->cb_lock);
		if (cb_break == vnode->cb_break)
			FUNC1(vnode, need_clear);
		else
			FUNC8(&vnode->fid, need_clear);
		FUNC10(&vnode->cb_lock);
		valid = false;
	}

	return valid;
}