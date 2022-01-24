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
struct p9_fid {int dummy; } ;
struct kvec {void* iov_base; size_t iov_len; } ;
struct iov_iter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  WRITE ; 
 struct p9_fid* FUNC2 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC3 (struct iov_iter*,int /*<<< orphan*/ ,struct kvec*,int,size_t) ; 
 int FUNC4 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_fid*,int /*<<< orphan*/ ,struct iov_iter*,int*) ; 
 int FUNC6 (struct p9_fid*,char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC8(struct p9_fid *fid, const char *name,
		   const void *value, size_t value_len, int flags)
{
	struct kvec kvec = {.iov_base = (void *)value, .iov_len = value_len};
	struct iov_iter from;
	int retval, err;

	FUNC3(&from, WRITE, &kvec, 1, value_len);

	FUNC7(P9_DEBUG_VFS, "name = %s value_len = %zu flags = %d\n",
		 name, value_len, flags);

	/* Clone it */
	fid = FUNC2(fid);
	if (FUNC0(fid))
		return FUNC1(fid);

	/*
	 * On success fid points to xattr
	 */
	retval = FUNC6(fid, name, value_len, flags);
	if (retval < 0)
		FUNC7(P9_DEBUG_VFS, "p9_client_xattrcreate failed %d\n",
			 retval);
	else
		FUNC5(fid, 0, &from, &retval);
	err = FUNC4(fid);
	if (!retval && err)
		retval = err;
	return retval;
}