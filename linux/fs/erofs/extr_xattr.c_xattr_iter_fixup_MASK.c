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
struct xattr_iter {scalar_t__ ofs; int /*<<< orphan*/ * page; int /*<<< orphan*/  kaddr; int /*<<< orphan*/  blkaddr; int /*<<< orphan*/  sb; } ;

/* Variables and functions */
 scalar_t__ EROFS_BLKSIZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xattr_iter*,int) ; 

__attribute__((used)) static inline int FUNC7(struct xattr_iter *it)
{
	if (it->ofs < EROFS_BLKSIZ)
		return 0;

	FUNC6(it, true);

	it->blkaddr += FUNC2(it->ofs);

	it->page = FUNC4(it->sb, it->blkaddr);
	if (FUNC0(it->page)) {
		int err = FUNC1(it->page);

		it->page = NULL;
		return err;
	}

	it->kaddr = FUNC5(it->page);
	it->ofs = FUNC3(it->ofs);
	return 0;
}