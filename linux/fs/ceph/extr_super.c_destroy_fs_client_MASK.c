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
struct ceph_fs_client {int /*<<< orphan*/  client; int /*<<< orphan*/  mount_options; int /*<<< orphan*/  wb_pagevec_pool; int /*<<< orphan*/  cap_wq; int /*<<< orphan*/  inode_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_fs_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct ceph_fs_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_fs_client*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ceph_fs_client *fsc)
{
	FUNC4("destroy_fs_client %p\n", fsc);

	FUNC1(fsc);
	FUNC3(fsc->inode_wq);
	FUNC3(fsc->cap_wq);

	FUNC6(fsc->wb_pagevec_pool);

	FUNC2(fsc->mount_options);

	FUNC0(fsc->client);

	FUNC5(fsc);
	FUNC4("destroy_fs_client %p done\n", fsc);
}