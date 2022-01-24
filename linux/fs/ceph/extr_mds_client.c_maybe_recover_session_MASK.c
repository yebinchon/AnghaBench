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
struct ceph_mds_client {struct ceph_fs_client* fsc; } ;
struct ceph_fs_client {int /*<<< orphan*/  sb; scalar_t__ last_auto_reconnect; int /*<<< orphan*/  blacklisted; int /*<<< orphan*/  mount_state; } ;

/* Variables and functions */
 scalar_t__ CEPH_MOUNT_MOUNTED ; 
 int /*<<< orphan*/  CLEANRECOVER ; 
 int HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_fs_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ceph_mds_client *mdsc)
{
	struct ceph_fs_client *fsc = mdsc->fsc;

	if (!FUNC2(fsc, CLEANRECOVER))
		return;

	if (FUNC0(fsc->mount_state) != CEPH_MOUNT_MOUNTED)
		return;

	if (!FUNC0(fsc->blacklisted))
		return;

	if (fsc->last_auto_reconnect &&
	    FUNC4(jiffies, fsc->last_auto_reconnect + HZ * 60 * 30))
		return;

	FUNC3("auto reconnect after blacklisted\n");
	fsc->last_auto_reconnect = jiffies;
	FUNC1(fsc->sb);
}