#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct key {int dummy; } ;
struct TYPE_9__ {int anon_access; } ;
struct TYPE_6__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {int /*<<< orphan*/  permit_cache; TYPE_4__ status; TYPE_3__* volume; TYPE_1__ fid; } ;
struct afs_permits {int nr_permits; int /*<<< orphan*/  invalidated; TYPE_5__* permits; } ;
typedef  int afs_access_t ;
struct TYPE_10__ {int access; struct key* key; } ;
struct TYPE_8__ {TYPE_2__* cell; } ;
struct TYPE_7__ {struct key* anonymous_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct afs_vnode*,struct key*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct key*) ; 
 struct afs_permits* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(struct afs_vnode *vnode, struct key *key,
		     afs_access_t *_access)
{
	struct afs_permits *permits;
	bool valid = false;
	int i, ret;

	FUNC1("{%llx:%llu},%x",
	       vnode->fid.vid, vnode->fid.vnode, FUNC4(key));

	/* check the permits to see if we've got one yet */
	if (key == vnode->volume->cell->anonymous_key) {
		FUNC0("anon");
		*_access = vnode->status.anon_access;
		valid = true;
	} else {
		FUNC6();
		permits = FUNC5(vnode->permit_cache);
		if (permits) {
			for (i = 0; i < permits->nr_permits; i++) {
				if (permits->permits[i].key < key)
					continue;
				if (permits->permits[i].key > key)
					break;

				*_access = permits->permits[i].access;
				valid = !permits->invalidated;
				break;
			}
		}
		FUNC7();
	}

	if (!valid) {
		/* Check the status on the file we're actually interested in
		 * (the post-processing will cache the result).
		 */
		FUNC0("no valid permit");

		ret = FUNC3(vnode, key, false, _access);
		if (ret < 0) {
			*_access = 0;
			FUNC2(" = %d", ret);
			return ret;
		}
	}

	FUNC2(" = 0 [access %x]", *_access);
	return 0;
}