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
struct p9_stat_dotl {int /*<<< orphan*/  qid; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct p9_stat_dotl*) ; 
 scalar_t__ FUNC1 (struct p9_stat_dotl*) ; 
 int P9_STATS_BASIC ; 
 int P9_STATS_GEN ; 
 int /*<<< orphan*/  FUNC2 (struct p9_stat_dotl*) ; 
 struct p9_stat_dotl* FUNC3 (struct p9_fid*,int) ; 
 struct inode* FUNC4 (struct super_block*,int /*<<< orphan*/ *,struct p9_fid*,struct p9_stat_dotl*,int) ; 

struct inode *
FUNC5(struct v9fs_session_info *v9ses, struct p9_fid *fid,
			 struct super_block *sb, int new)
{
	struct p9_stat_dotl *st;
	struct inode *inode = NULL;

	st = FUNC3(fid, P9_STATS_BASIC | P9_STATS_GEN);
	if (FUNC1(st))
		return FUNC0(st);

	inode = FUNC4(sb, &st->qid, fid, st, new);
	FUNC2(st);
	return inode;
}