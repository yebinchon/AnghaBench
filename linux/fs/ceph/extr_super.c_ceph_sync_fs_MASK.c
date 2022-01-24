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
struct super_block {int dummy; } ;
struct ceph_fs_client {int /*<<< orphan*/  mdsc; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  osdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ceph_fs_client* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, int wait)
{
	struct ceph_fs_client *fsc = FUNC3(sb);

	if (!wait) {
		FUNC4("sync_fs (non-blocking)\n");
		FUNC0(fsc->mdsc);
		FUNC4("sync_fs (non-blocking) done\n");
		return 0;
	}

	FUNC4("sync_fs (blocking)\n");
	FUNC2(&fsc->client->osdc);
	FUNC1(fsc->mdsc);
	FUNC4("sync_fs (blocking) done\n");
	return 0;
}