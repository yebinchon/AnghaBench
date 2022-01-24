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
struct v9fs_session_info {int dummy; } ;
struct super_block {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct v9fs_session_info*,struct p9_fid*,struct super_block*,int) ; 
 struct inode* FUNC1 (struct v9fs_session_info*,struct p9_fid*,struct super_block*,int) ; 
 scalar_t__ FUNC2 (struct v9fs_session_info*) ; 

__attribute__((used)) static inline struct inode *
FUNC3(struct v9fs_session_info *v9ses, struct p9_fid *fid,
			    struct super_block *sb)
{
	if (FUNC2(v9ses))
		return FUNC1(v9ses, fid, sb, 1);
	else
		return FUNC0(v9ses, fid, sb, 1);
}