#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int /*<<< orphan*/  s_dev; } ;
struct ceph_fs_client {TYPE_1__* client; int /*<<< orphan*/  mdsc; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {int /*<<< orphan*/ * extra_mon_dispatch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_fs_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_fs_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ceph_fs_client* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_fs_client*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_fs_client*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 

__attribute__((used)) static void FUNC9(struct super_block *s)
{
	struct ceph_fs_client *fsc = FUNC3(s);
	dev_t dev = s->s_dev;

	FUNC5("kill_sb %p\n", s);

	FUNC2(fsc->mdsc);
	FUNC6(fsc);

	FUNC8(s);

	fsc->client->extra_mon_dispatch = NULL;
	FUNC0(fsc);

	FUNC1(fsc);

	FUNC4(fsc);
	FUNC7(dev);
}