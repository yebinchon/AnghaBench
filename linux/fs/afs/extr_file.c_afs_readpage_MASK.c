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
struct page {TYPE_1__* mapping; } ;
struct key {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cell; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct key*) ; 
 int FUNC3 (struct key*) ; 
 struct key* FUNC4 (struct file*) ; 
 int FUNC5 (struct key*,struct page*) ; 
 struct key* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct key*) ; 

__attribute__((used)) static int FUNC8(struct file *file, struct page *page)
{
	struct key *key;
	int ret;

	if (file) {
		key = FUNC4(file);
		FUNC1(key != NULL);
		ret = FUNC5(key, page);
	} else {
		struct inode *inode = page->mapping->host;
		key = FUNC6(FUNC0(inode->i_sb)->cell);
		if (FUNC2(key)) {
			ret = FUNC3(key);
		} else {
			ret = FUNC5(key, page);
			FUNC7(key);
		}
	}
	return ret;
}