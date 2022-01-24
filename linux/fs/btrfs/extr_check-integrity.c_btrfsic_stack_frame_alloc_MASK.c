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
struct btrfsic_stack_frame {int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFSIC_BLOCK_STACK_FRAME_MAGIC_NUMBER ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct btrfsic_stack_frame* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static struct btrfsic_stack_frame *FUNC2(void)
{
	struct btrfsic_stack_frame *sf;

	sf = FUNC0(sizeof(*sf), GFP_NOFS);
	if (NULL == sf)
		FUNC1("btrfsic: alloc memory failed!\n");
	else
		sf->magic = BTRFSIC_BLOCK_STACK_FRAME_MAGIC_NUMBER;
	return sf;
}