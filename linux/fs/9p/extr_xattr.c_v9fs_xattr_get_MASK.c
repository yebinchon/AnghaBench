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
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,size_t) ; 
 struct p9_fid* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_fid*,char const*,void*,size_t) ; 

ssize_t FUNC5(struct dentry *dentry, const char *name,
		       void *buffer, size_t buffer_size)
{
	struct p9_fid *fid;

	FUNC2(P9_DEBUG_VFS, "name = %s value_len = %zu\n",
		 name, buffer_size);
	fid = FUNC3(dentry);
	if (FUNC0(fid))
		return FUNC1(fid);

	return FUNC4(fid, name, buffer, buffer_size);
}