#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct afs_vnode {TYPE_2__ cb_lock; int /*<<< orphan*/  flags; TYPE_1__* volume; int /*<<< orphan*/  cb_v_break; int /*<<< orphan*/  cb_s_break; int /*<<< orphan*/  cb_interest; int /*<<< orphan*/  io_lock; } ;
struct afs_server_list {int /*<<< orphan*/  lock; struct afs_server_entry* servers; } ;
struct afs_server_entry {struct afs_cb_interest* cb_interest; struct afs_server* server; } ;
struct afs_server {int /*<<< orphan*/  cb_s_break; } ;
struct afs_cb_interest {struct afs_server* server; } ;
struct TYPE_4__ {int /*<<< orphan*/  cb_v_break; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VNODE_CB_PROMISED ; 
 int /*<<< orphan*/  FUNC0 (struct afs_cb_interest*) ; 
 int ENOMEM ; 
 struct afs_cb_interest* FUNC1 (struct afs_server*,struct afs_vnode*) ; 
 void* FUNC2 (struct afs_cb_interest*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct afs_cb_interest*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct afs_cb_interest*) ; 
 struct afs_cb_interest* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct afs_vnode *vnode,
				    struct afs_server_list *slist,
				    unsigned int index)
{
	struct afs_server_entry *entry = &slist->servers[index];
	struct afs_cb_interest *cbi, *vcbi, *new, *old;
	struct afs_server *server = entry->server;

again:
	vcbi = FUNC9(vnode->cb_interest,
					 FUNC7(&vnode->io_lock));
	if (vcbi && FUNC6(vcbi == entry->cb_interest))
		return 0;

	FUNC10(&slist->lock);
	cbi = FUNC2(entry->cb_interest);
	FUNC11(&slist->lock);

	if (vcbi) {
		if (vcbi == cbi) {
			FUNC3(FUNC4(vnode), cbi);
			return 0;
		}

		/* Use a new interest in the server list for the same server
		 * rather than an old one that's still attached to a vnode.
		 */
		if (cbi && vcbi->server == cbi->server) {
			FUNC13(&vnode->cb_lock);
			old = FUNC9(vnode->cb_interest,
							FUNC7(&vnode->cb_lock.lock));
			FUNC8(vnode->cb_interest, cbi);
			FUNC14(&vnode->cb_lock);
			FUNC3(FUNC4(vnode), old);
			return 0;
		}

		/* Re-use the one attached to the vnode. */
		if (!cbi && vcbi->server == server) {
			FUNC12(&slist->lock);
			if (entry->cb_interest) {
				FUNC15(&slist->lock);
				FUNC3(FUNC4(vnode), cbi);
				goto again;
			}

			entry->cb_interest = cbi;
			FUNC15(&slist->lock);
			return 0;
		}
	}

	if (!cbi) {
		new = FUNC1(server, vnode);
		if (!new)
			return -ENOMEM;

		FUNC12(&slist->lock);
		if (!entry->cb_interest) {
			entry->cb_interest = FUNC2(new);
			cbi = new;
			new = NULL;
		} else {
			cbi = FUNC2(entry->cb_interest);
		}
		FUNC15(&slist->lock);
		FUNC3(FUNC4(vnode), new);
	}

	FUNC0(cbi);

	/* Change the server the vnode is using.  This entails scrubbing any
	 * interest the vnode had in the previous server it was using.
	 */
	FUNC13(&vnode->cb_lock);

	old = FUNC9(vnode->cb_interest,
					FUNC7(&vnode->cb_lock.lock));
	FUNC8(vnode->cb_interest, cbi);
	vnode->cb_s_break = cbi->server->cb_s_break;
	vnode->cb_v_break = vnode->volume->cb_v_break;
	FUNC5(AFS_VNODE_CB_PROMISED, &vnode->flags);

	FUNC14(&vnode->cb_lock);
	FUNC3(FUNC4(vnode), old);
	return 0;
}