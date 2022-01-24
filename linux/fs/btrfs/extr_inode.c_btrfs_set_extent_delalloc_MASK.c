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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct extent_state {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  io_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct extent_state**) ; 

int FUNC4(struct inode *inode, u64 start, u64 end,
			      unsigned int extra_bits,
			      struct extent_state **cached_state)
{
	FUNC2(FUNC1(end));
	return FUNC3(&FUNC0(inode)->io_tree, start, end,
				   extra_bits, cached_state);
}