#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v9fs_session_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ path; int /*<<< orphan*/  version; } ;
struct v9fs_inode {TYPE_1__ qid; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ path; int /*<<< orphan*/  version; } ;
struct p9_wstat {TYPE_2__ qid; } ;
struct inode {int i_mode; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int S_IFMT ; 
 struct v9fs_inode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct v9fs_session_info*,struct p9_wstat*,int /*<<< orphan*/ *) ; 
 struct v9fs_session_info* FUNC3 (struct inode*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, void *data)
{
	int umode;
	dev_t rdev;
	struct v9fs_inode *v9inode = FUNC0(inode);
	struct p9_wstat *st = (struct p9_wstat *)data;
	struct v9fs_session_info *v9ses = FUNC3(inode);

	umode = FUNC2(v9ses, st, &rdev);
	/* don't match inode of different type */
	if ((inode->i_mode & S_IFMT) != (umode & S_IFMT))
		return 0;

	/* compare qid details */
	if (FUNC1(&v9inode->qid.version,
		   &st->qid.version, sizeof(v9inode->qid.version)))
		return 0;

	if (v9inode->qid.type != st->qid.type)
		return 0;

	if (v9inode->qid.path != st->qid.path)
		return 0;
	return 1;
}