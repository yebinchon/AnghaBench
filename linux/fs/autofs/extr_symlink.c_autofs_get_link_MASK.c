#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct delayed_call {int dummy; } ;
struct autofs_sb_info {int dummy; } ;
struct autofs_info {int /*<<< orphan*/  last_used; } ;
struct TYPE_2__ {char const* i_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECHILD ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 struct autofs_info* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static const char *FUNC5(struct dentry *dentry,
				   struct inode *inode,
				   struct delayed_call *done)
{
	struct autofs_sb_info *sbi;
	struct autofs_info *ino;

	if (!dentry)
		return FUNC0(-ECHILD);
	sbi = FUNC3(dentry->d_sb);
	ino = FUNC1(dentry);
	if (ino && !FUNC2(sbi))
		ino->last_used = jiffies;
	return FUNC4(dentry)->i_private;
}