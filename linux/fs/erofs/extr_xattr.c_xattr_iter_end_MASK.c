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
struct xattr_iter {int /*<<< orphan*/  page; int /*<<< orphan*/  kaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct xattr_iter *it, bool atomic)
{
	/* the only user of kunmap() is 'init_inode_xattrs' */
	if (!atomic)
		FUNC0(it->page);
	else
		FUNC1(it->kaddr);

	FUNC3(it->page);
	FUNC2(it->page);
}