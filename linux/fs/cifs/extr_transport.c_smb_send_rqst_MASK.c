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
typedef  int /*<<< orphan*/  tr_hdr ;
struct smb_rqst {int iov_len; int rq_nvec; struct smb_rqst* rq_iov; struct smb_rqst* iov_base; } ;
struct smb2_transform_hdr {int iov_len; int rq_nvec; struct smb2_transform_hdr* rq_iov; struct smb2_transform_hdr* iov_base; } ;
struct kvec {int iov_len; int rq_nvec; struct kvec* rq_iov; struct kvec* iov_base; } ;
struct TCP_Server_Info {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  iov ;
typedef  int /*<<< orphan*/  cur_rqst ;
struct TYPE_2__ {int (* init_transform_rq ) (struct TCP_Server_Info*,int,struct smb_rqst*,struct smb_rqst*) ;} ;

/* Variables and functions */
 int CIFS_TRANSFORM_REQ ; 
 int EIO ; 
 int ENOMEM ; 
 int MAX_COMPOUND ; 
 int /*<<< orphan*/  VFS ; 
 int FUNC0 (struct TCP_Server_Info*,int,struct smb_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_rqst*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct smb_rqst*) ; 
 int FUNC4 (struct TCP_Server_Info*,int,struct smb_rqst*,struct smb_rqst*) ; 

__attribute__((used)) static int
FUNC5(struct TCP_Server_Info *server, int num_rqst,
	      struct smb_rqst *rqst, int flags)
{
	struct kvec iov;
	struct smb2_transform_hdr tr_hdr;
	struct smb_rqst cur_rqst[MAX_COMPOUND];
	int rc;

	if (!(flags & CIFS_TRANSFORM_REQ))
		return FUNC0(server, num_rqst, rqst);

	if (num_rqst > MAX_COMPOUND - 1)
		return -ENOMEM;

	FUNC2(&cur_rqst[0], 0, sizeof(cur_rqst));
	FUNC2(&iov, 0, sizeof(iov));
	FUNC2(&tr_hdr, 0, sizeof(tr_hdr));

	iov.iov_base = &tr_hdr;
	iov.iov_len = sizeof(tr_hdr);
	cur_rqst[0].rq_iov = &iov;
	cur_rqst[0].rq_nvec = 1;

	if (!server->ops->init_transform_rq) {
		FUNC1(VFS, "Encryption requested but transform "
				"callback is missing\n");
		return -EIO;
	}

	rc = server->ops->init_transform_rq(server, num_rqst + 1,
					    &cur_rqst[0], rqst);
	if (rc)
		return rc;

	rc = FUNC0(server, num_rqst + 1, &cur_rqst[0]);
	FUNC3(num_rqst, &cur_rqst[1]);
	return rc;
}