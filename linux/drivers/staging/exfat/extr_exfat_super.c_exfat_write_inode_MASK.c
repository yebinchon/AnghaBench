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
struct writeback_control {int dummy; } ;
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct dir_entry_t {int /*<<< orphan*/  AccessTimestamp; int /*<<< orphan*/  CreateTimestamp; int /*<<< orphan*/  ModifyTimestamp; int /*<<< orphan*/  Size; int /*<<< orphan*/  Attr; } ;

/* Variables and functions */
 scalar_t__ EXFAT_ROOT_INO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct dir_entry_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct writeback_control *wbc)
{
	struct dir_entry_t info;

	if (inode->i_ino == EXFAT_ROOT_INO)
		return 0;

	info.Attr = FUNC0(inode);
	info.Size = FUNC3(inode);

	FUNC1(&inode->i_mtime, &info.ModifyTimestamp);
	FUNC1(&inode->i_ctime, &info.CreateTimestamp);
	FUNC1(&inode->i_atime, &info.AccessTimestamp);

	FUNC2(inode, &info);

	return 0;
}