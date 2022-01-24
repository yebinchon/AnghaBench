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
typedef  size_t u64 ;
struct p9_fid {int dummy; } ;
struct kvec {void* iov_base; size_t iov_len; } ;
struct iov_iter {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ERANGE ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC2 (struct iov_iter*,int /*<<< orphan*/ ,struct kvec*,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct iov_iter*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_fid*) ; 
 int FUNC5 (struct p9_fid*,int /*<<< orphan*/ ,struct iov_iter*,int*) ; 
 struct p9_fid* FUNC6 (struct p9_fid*,char const*,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

ssize_t FUNC8(struct p9_fid *fid, const char *name,
			   void *buffer, size_t buffer_size)
{
	ssize_t retval;
	u64 attr_size;
	struct p9_fid *attr_fid;
	struct kvec kvec = {.iov_base = buffer, .iov_len = buffer_size};
	struct iov_iter to;
	int err;

	FUNC2(&to, READ, &kvec, 1, buffer_size);

	attr_fid = FUNC6(fid, name, &attr_size);
	if (FUNC0(attr_fid)) {
		retval = FUNC1(attr_fid);
		FUNC7(P9_DEBUG_VFS, "p9_client_attrwalk failed %zd\n",
			 retval);
		return retval;
	}
	if (attr_size > buffer_size) {
		if (!buffer_size) /* request to get the attr_size */
			retval = attr_size;
		else
			retval = -ERANGE;
	} else {
		FUNC3(&to, attr_size);
		retval = FUNC5(attr_fid, 0, &to, &err);
		if (err)
			retval = err;
	}
	FUNC4(attr_fid);
	return retval;
}