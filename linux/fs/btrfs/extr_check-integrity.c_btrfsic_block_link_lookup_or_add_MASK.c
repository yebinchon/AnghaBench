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
typedef  void* u64 ;
struct btrfsic_state {int print_mask; int /*<<< orphan*/  block_link_hashtable; } ;
struct btrfsic_block_link {int ref_cnt; void* parent_generation; int /*<<< orphan*/  node_ref_from; int /*<<< orphan*/  node_ref_to; struct btrfsic_block* block_ref_from; struct btrfsic_block* block_ref_to; } ;
struct btrfsic_block_data_ctx {int /*<<< orphan*/  dev_bytenr; TYPE_1__* dev; } ;
struct btrfsic_block {int /*<<< orphan*/  ref_from_list; int /*<<< orphan*/  ref_to_list; int /*<<< orphan*/  dev_bytenr; TYPE_2__* dev_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int BTRFSIC_PRINT_MASK_VERBOSE ; 
 struct btrfsic_block_link* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct btrfsic_block_link*,int /*<<< orphan*/ *) ; 
 struct btrfsic_block_link* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfsic_state*,struct btrfsic_block_link*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static struct btrfsic_block_link *FUNC6(
		struct btrfsic_state *state,
		struct btrfsic_block_data_ctx *next_block_ctx,
		struct btrfsic_block *next_block,
		struct btrfsic_block *from_block,
		u64 parent_generation)
{
	struct btrfsic_block_link *l;

	l = FUNC2(next_block_ctx->dev->bdev,
						next_block_ctx->dev_bytenr,
						from_block->dev_state->bdev,
						from_block->dev_bytenr,
						&state->block_link_hashtable);
	if (NULL == l) {
		l = FUNC0();
		if (NULL == l) {
			FUNC5("btrfsic: error, kmalloc failed!\n");
			return NULL;
		}

		l->block_ref_to = next_block;
		l->block_ref_from = from_block;
		l->ref_cnt = 1;
		l->parent_generation = parent_generation;

		if (state->print_mask & BTRFSIC_PRINT_MASK_VERBOSE)
			FUNC3(state, l);

		FUNC4(&l->node_ref_to, &from_block->ref_to_list);
		FUNC4(&l->node_ref_from, &next_block->ref_from_list);

		FUNC1(l,
						 &state->block_link_hashtable);
	} else {
		l->ref_cnt++;
		l->parent_generation = parent_generation;
		if (state->print_mask & BTRFSIC_PRINT_MASK_VERBOSE)
			FUNC3(state, l);
	}

	return l;
}