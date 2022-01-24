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
struct super_block {int /*<<< orphan*/  s_time_gran; } ;
struct cifs_sb_info {int /*<<< orphan*/  mnt_gid; int /*<<< orphan*/  mnt_uid; } ;
struct cifs_fattr {int cf_mode; int cf_nlink; int /*<<< orphan*/  cf_flags; int /*<<< orphan*/  cf_mtime; int /*<<< orphan*/  cf_ctime; int /*<<< orphan*/  cf_atime; int /*<<< orphan*/  cf_gid; int /*<<< orphan*/  cf_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIFS_FATTR_DFS_REFERRAL ; 
 struct cifs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FYI ; 
 int S_IFDIR ; 
 int S_IRWXU ; 
 int S_IXUGO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cifs_fattr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct cifs_fattr *fattr, struct super_block *sb)
{
	struct cifs_sb_info *cifs_sb = FUNC0(sb);

	FUNC1(FYI, "creating fake fattr for DFS referral\n");

	FUNC3(fattr, 0, sizeof(*fattr));
	fattr->cf_mode = S_IFDIR | S_IXUGO | S_IRWXU;
	fattr->cf_uid = cifs_sb->mnt_uid;
	fattr->cf_gid = cifs_sb->mnt_gid;
	FUNC2(&fattr->cf_mtime);
	fattr->cf_mtime = FUNC4(fattr->cf_mtime, sb->s_time_gran);
	fattr->cf_atime = fattr->cf_ctime = fattr->cf_mtime;
	fattr->cf_nlink = 2;
	fattr->cf_flags = CIFS_FATTR_DFS_REFERRAL;
}