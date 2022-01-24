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
struct v9fs_inode {int /*<<< orphan*/  qid; } ;
struct p9_wstat {int /*<<< orphan*/  qid; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct v9fs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct inode *inode,  void *data)
{
	struct v9fs_inode *v9inode = FUNC0(inode);
	struct p9_wstat *st = (struct p9_wstat *)data;

	FUNC1(&v9inode->qid, &st->qid, sizeof(st->qid));
	return 0;
}