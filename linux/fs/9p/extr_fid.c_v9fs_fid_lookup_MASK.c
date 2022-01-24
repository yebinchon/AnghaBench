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
struct v9fs_session_info {int flags; int /*<<< orphan*/  uid; } ;
struct p9_fid {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_UID ; 
#define  V9FS_ACCESS_ANY 131 
#define  V9FS_ACCESS_CLIENT 130 
 int V9FS_ACCESS_MASK ; 
#define  V9FS_ACCESS_SINGLE 129 
#define  V9FS_ACCESS_USER 128 
 int /*<<< orphan*/  FUNC0 () ; 
 struct v9fs_session_info* FUNC1 (struct dentry*) ; 
 struct p9_fid* FUNC2 (struct dentry*,int /*<<< orphan*/ ,int) ; 

struct p9_fid *FUNC3(struct dentry *dentry)
{
	kuid_t uid;
	int  any, access;
	struct v9fs_session_info *v9ses;

	v9ses = FUNC1(dentry);
	access = v9ses->flags & V9FS_ACCESS_MASK;
	switch (access) {
	case V9FS_ACCESS_SINGLE:
	case V9FS_ACCESS_USER:
	case V9FS_ACCESS_CLIENT:
		uid = FUNC0();
		any = 0;
		break;

	case V9FS_ACCESS_ANY:
		uid = v9ses->uid;
		any = 1;
		break;

	default:
		uid = INVALID_UID;
		any = 0;
		break;
	}
	return FUNC2(dentry, uid, any);
}