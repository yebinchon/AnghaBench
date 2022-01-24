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
struct p9_wstat {int /*<<< orphan*/  qid; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct p9_wstat*) ; 
 scalar_t__ FUNC1 (struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC2 (struct p9_wstat*) ; 
 struct p9_wstat* FUNC3 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_wstat*) ; 
 struct inode* FUNC5 (struct super_block*,int /*<<< orphan*/ *,struct p9_wstat*,int) ; 

struct inode *
FUNC6(struct v9fs_session_info *v9ses, struct p9_fid *fid,
		    struct super_block *sb, int new)
{
	struct p9_wstat *st;
	struct inode *inode = NULL;

	st = FUNC3(fid);
	if (FUNC1(st))
		return FUNC0(st);

	inode = FUNC5(sb, &st->qid, st, new);
	FUNC4(st);
	FUNC2(st);
	return inode;
}