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
struct dentry {int dummy; } ;
struct ceph_fs_client {TYPE_3__* client; int /*<<< orphan*/  mount_state; TYPE_2__* sb; TYPE_1__* mount_options; } ;
struct TYPE_6__ {int /*<<< orphan*/  mount_mutex; } ;
struct TYPE_5__ {struct dentry* s_root; } ;
struct TYPE_4__ {int flags; char* server_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_MOUNT_MOUNTED ; 
 int CEPH_MOUNT_OPT_FSCACHE ; 
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*) ; 
 int FUNC3 (TYPE_3__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_fs_client*) ; 
 int FUNC5 (struct ceph_fs_client*) ; 
 void* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct dentry* FUNC10 (struct ceph_fs_client*,char const*,unsigned long) ; 

__attribute__((used)) static struct dentry *FUNC11(struct ceph_fs_client *fsc)
{
	int err;
	unsigned long started = jiffies;  /* note the start time */
	struct dentry *root;

	FUNC7("mount start %p\n", fsc);
	FUNC8(&fsc->client->mount_mutex);

	if (!fsc->sb->s_root) {
		const char *path;
		err = FUNC3(fsc->client, started);
		if (err < 0)
			goto out;

		/* setup fscache */
		if (fsc->mount_options->flags & CEPH_MOUNT_OPT_FSCACHE) {
			err = FUNC5(fsc);
			if (err < 0)
				goto out;
		}

		if (!fsc->mount_options->server_path) {
			path = "";
			FUNC7("mount opening path \\t\n");
		} else {
			path = fsc->mount_options->server_path + 1;
			FUNC7("mount opening path %s\n", path);
		}

		FUNC4(fsc);

		root = FUNC10(fsc, path, started);
		if (FUNC1(root)) {
			err = FUNC2(root);
			goto out;
		}
		fsc->sb->s_root = FUNC6(root);
	} else {
		root = FUNC6(fsc->sb->s_root);
	}

	fsc->mount_state = CEPH_MOUNT_MOUNTED;
	FUNC7("mount success\n");
	FUNC9(&fsc->client->mount_mutex);
	return root;

out:
	FUNC9(&fsc->client->mount_mutex);
	return FUNC0(err);
}