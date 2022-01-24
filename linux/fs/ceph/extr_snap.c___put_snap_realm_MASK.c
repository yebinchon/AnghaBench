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
struct ceph_snap_realm {int /*<<< orphan*/  nref; int /*<<< orphan*/  ino; } ;
struct ceph_mds_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_mds_client*,struct ceph_snap_realm*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,struct ceph_snap_realm*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct ceph_mds_client *mdsc,
			     struct ceph_snap_realm *realm)
{
	FUNC3("__put_snap_realm %llx %p %d -> %d\n", realm->ino, realm,
	     FUNC2(&realm->nref), FUNC2(&realm->nref)-1);
	if (FUNC1(&realm->nref))
		FUNC0(mdsc, realm);
}