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
struct inode {int /*<<< orphan*/  i_mtime; } ;
struct ceph_osd_request {int /*<<< orphan*/  r_mtime; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_layout; } ;
struct ceph_fs_client {TYPE_1__* client; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  osdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_FLAG_WRITE ; 
 int CEPH_OSD_OP_DELETE ; 
 int CEPH_OSD_OP_TRUNCATE ; 
 int CEPH_OSD_OP_ZERO ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct ceph_osd_request*) ; 
 int FUNC1 (struct ceph_osd_request*) ; 
 struct ceph_inode_info* FUNC2 (struct inode*) ; 
 struct ceph_fs_client* FUNC3 (struct inode*) ; 
 struct ceph_osd_request* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_osd_request*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct ceph_osd_request*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct ceph_osd_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode,
				    loff_t offset, loff_t *length)
{
	struct ceph_inode_info *ci = FUNC2(inode);
	struct ceph_fs_client *fsc = FUNC3(inode);
	struct ceph_osd_request *req;
	int ret = 0;
	loff_t zero = 0;
	int op;

	if (!length) {
		op = offset ? CEPH_OSD_OP_DELETE : CEPH_OSD_OP_TRUNCATE;
		length = &zero;
	} else {
		op = CEPH_OSD_OP_ZERO;
	}

	req = FUNC4(&fsc->client->osdc, &ci->i_layout,
					FUNC8(inode),
					offset, length,
					0, 1, op,
					CEPH_OSD_FLAG_WRITE,
					NULL, 0, 0, false);
	if (FUNC0(req)) {
		ret = FUNC1(req);
		goto out;
	}

	req->r_mtime = inode->i_mtime;
	ret = FUNC6(&fsc->client->osdc, req, false);
	if (!ret) {
		ret = FUNC7(&fsc->client->osdc, req);
		if (ret == -ENOENT)
			ret = 0;
	}
	FUNC5(req);

out:
	return ret;
}