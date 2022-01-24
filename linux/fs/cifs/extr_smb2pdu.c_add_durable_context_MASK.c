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
struct smb2_create_req {int /*<<< orphan*/  CreateContextsLength; scalar_t__ CreateContextsOffset; } ;
struct kvec {int iov_len; struct smb2_create_req* iov_base; } ;
struct create_durable {int dummy; } ;
struct cifs_open_parms {int reconnect; int /*<<< orphan*/  fid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct kvec*,unsigned int*,struct cifs_open_parms*) ; 
 int FUNC1 (struct kvec*,unsigned int*,struct cifs_open_parms*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct smb2_create_req* FUNC3 () ; 
 struct smb2_create_req* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC6(struct kvec *iov, unsigned int *num_iovec,
		    struct cifs_open_parms *oparms, bool use_persistent)
{
	struct smb2_create_req *req = iov[0].iov_base;
	unsigned int num = *num_iovec;

	if (use_persistent) {
		if (oparms->reconnect)
			return FUNC0(iov, num_iovec,
								oparms);
		else
			return FUNC1(iov, num_iovec, oparms);
	}

	if (oparms->reconnect) {
		iov[num].iov_base = FUNC4(oparms->fid);
		/* indicate that we don't need to relock the file */
		oparms->reconnect = false;
	} else
		iov[num].iov_base = FUNC3();
	if (iov[num].iov_base == NULL)
		return -ENOMEM;
	iov[num].iov_len = sizeof(struct create_durable);
	if (!req->CreateContextsOffset)
		req->CreateContextsOffset =
			FUNC2(sizeof(struct smb2_create_req) +
								iov[1].iov_len);
	FUNC5(&req->CreateContextsLength, sizeof(struct create_durable));
	*num_iovec = num + 1;
	return 0;
}