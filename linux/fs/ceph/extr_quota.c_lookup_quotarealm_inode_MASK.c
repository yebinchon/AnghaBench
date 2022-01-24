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
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ceph_snap_realm {int /*<<< orphan*/  ino; } ;
struct ceph_quotarealm_inode {int /*<<< orphan*/  mutex; struct inode* inode; scalar_t__ timeout; } ;
struct ceph_mds_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_STAT_CAP_INODE ; 
 struct inode* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct ceph_quotarealm_inode* FUNC6 (struct ceph_mds_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct inode *FUNC12(struct ceph_mds_client *mdsc,
					     struct super_block *sb,
					     struct ceph_snap_realm *realm)
{
	struct ceph_quotarealm_inode *qri;
	struct inode *in;

	qri = FUNC6(mdsc, realm->ino);
	if (!qri)
		return NULL;

	FUNC8(&qri->mutex);
	if (qri->inode && FUNC4(qri->inode)) {
		/* A request has already returned the inode */
		FUNC9(&qri->mutex);
		return qri->inode;
	}
	/* Check if this inode lookup has failed recently */
	if (qri->timeout &&
	    FUNC11(jiffies, qri->timeout)) {
		FUNC9(&qri->mutex);
		return NULL;
	}
	if (qri->inode) {
		/* get caps */
		int ret = FUNC3(qri->inode, NULL,
					    CEPH_STAT_CAP_INODE, true);
		if (ret >= 0)
			in = qri->inode;
		else
			in = FUNC0(ret);
	}  else {
		in = FUNC5(sb, realm->ino);
	}

	if (FUNC1(in)) {
		FUNC10("Can't lookup inode %llx (err: %ld)\n",
			realm->ino, FUNC2(in));
		qri->timeout = jiffies + FUNC7(60 * 1000); /* XXX */
	} else {
		qri->timeout = 0;
		qri->inode = in;
	}
	FUNC9(&qri->mutex);

	return in;
}