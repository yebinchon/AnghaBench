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
typedef  scalar_t__ umode_t ;
struct smb2_create_req {int /*<<< orphan*/  CreateContextsLength; scalar_t__ CreateContextsOffset; } ;
struct kvec {int iov_len; struct smb2_create_req* iov_base; } ;
struct create_posix {int dummy; } ;

/* Variables and functions */
 scalar_t__ ACL_NO_MODE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 struct smb2_create_req* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(struct kvec *iov, unsigned int *num_iovec, umode_t mode)
{
	struct smb2_create_req *req = iov[0].iov_base;
	unsigned int num = *num_iovec;

	iov[num].iov_base = FUNC2(mode);
	if (mode == ACL_NO_MODE)
		FUNC0(FYI, "illegal mode\n");
	if (iov[num].iov_base == NULL)
		return -ENOMEM;
	iov[num].iov_len = sizeof(struct create_posix);
	if (!req->CreateContextsOffset)
		req->CreateContextsOffset = FUNC1(
				sizeof(struct smb2_create_req) +
				iov[num - 1].iov_len);
	FUNC3(&req->CreateContextsLength, sizeof(struct create_posix));
	*num_iovec = num + 1;
	return 0;
}