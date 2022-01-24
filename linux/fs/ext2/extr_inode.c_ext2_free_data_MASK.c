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
struct inode {int dummy; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,unsigned long,unsigned long) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

__attribute__((used)) static inline void FUNC3(struct inode *inode, __le32 *p, __le32 *q)
{
	unsigned long block_to_free = 0, count = 0;
	unsigned long nr;

	for ( ; p < q ; p++) {
		nr = FUNC1(*p);
		if (nr) {
			*p = 0;
			/* accumulate blocks to free if they're contiguous */
			if (count == 0)
				goto free_this;
			else if (block_to_free == nr - count)
				count++;
			else {
				FUNC0 (inode, block_to_free, count);
				FUNC2(inode);
			free_this:
				block_to_free = nr;
				count = 1;
			}
		}
	}
	if (count > 0) {
		FUNC0 (inode, block_to_free, count);
		FUNC2(inode);
	}
}