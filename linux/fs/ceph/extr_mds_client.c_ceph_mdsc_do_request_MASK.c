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
struct inode {int dummy; } ;
struct ceph_mds_request {int dummy; } ;
struct ceph_mds_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ceph_mds_client*,struct inode*,struct ceph_mds_request*) ; 
 int FUNC1 (struct ceph_mds_client*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ceph_mds_request*,...) ; 

int FUNC3(struct ceph_mds_client *mdsc,
			 struct inode *dir,
			 struct ceph_mds_request *req)
{
	int err;

	FUNC2("do_request on %p\n", req);

	/* issue */
	err = FUNC0(mdsc, dir, req);
	if (!err)
		err = FUNC1(mdsc, req);
	FUNC2("do_request %p done, result %d\n", req, err);
	return err;
}