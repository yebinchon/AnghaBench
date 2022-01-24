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
struct super_block {int dummy; } ;
struct ext2_reserve_window_node {int /*<<< orphan*/  rsv_node; scalar_t__ rsv_alloc_hit; void* rsv_end; void* rsv_start; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_rsv_window_root; } ;

/* Variables and functions */
 void* EXT2_RESERVE_WINDOW_NOT_ALLOCATED ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct super_block *sb,
			      struct ext2_reserve_window_node *rsv)
{
	rsv->rsv_start = EXT2_RESERVE_WINDOW_NOT_ALLOCATED;
	rsv->rsv_end = EXT2_RESERVE_WINDOW_NOT_ALLOCATED;
	rsv->rsv_alloc_hit = 0;
	FUNC1(&rsv->rsv_node, &FUNC0(sb)->s_rsv_window_root);
}