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
struct crt_query_id_ctxt {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 struct smb2_create_req* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(struct kvec *iov, unsigned int *num_iovec)
{
	struct smb2_create_req *req = iov[0].iov_base;
	unsigned int num = *num_iovec;

	iov[num].iov_base = FUNC1();
	if (iov[num].iov_base == NULL)
		return -ENOMEM;
	iov[num].iov_len = sizeof(struct crt_query_id_ctxt);
	if (!req->CreateContextsOffset)
		req->CreateContextsOffset = FUNC0(
				sizeof(struct smb2_create_req) +
				iov[num - 1].iov_len);
	FUNC2(&req->CreateContextsLength, sizeof(struct crt_query_id_ctxt));
	*num_iovec = num + 1;
	return 0;
}