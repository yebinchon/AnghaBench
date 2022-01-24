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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct ext2_dir_entry_2 {int dummy; } ;
typedef  struct ext2_dir_entry_2 ext2_dirent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ext2_dir_entry_2* FUNC2 (struct ext2_dir_entry_2*) ; 
 scalar_t__ FUNC3 (struct page*) ; 

struct ext2_dir_entry_2 * FUNC4 (struct inode *dir, struct page **p)
{
	struct page *page = FUNC1(dir, 0, 0);
	ext2_dirent *de = NULL;

	if (!FUNC0(page)) {
		de = FUNC2((ext2_dirent *) FUNC3(page));
		*p = page;
	}
	return de;
}