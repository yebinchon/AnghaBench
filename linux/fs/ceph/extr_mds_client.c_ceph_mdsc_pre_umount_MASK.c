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
struct ceph_mds_client {int stopping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_mds_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mds_client*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_mds_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_mds_client*) ; 

void FUNC6(struct ceph_mds_client *mdsc)
{
	FUNC3("pre_umount\n");
	mdsc->stopping = 1;

	FUNC4(mdsc);
	FUNC1(mdsc);
	FUNC5(mdsc);

	/*
	 * wait for reply handlers to drop their request refs and
	 * their inode/dcache refs
	 */
	FUNC2();

	FUNC0(mdsc);
}