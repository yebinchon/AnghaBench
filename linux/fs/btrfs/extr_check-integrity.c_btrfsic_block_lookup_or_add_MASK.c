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
struct btrfsic_state {int print_mask; int /*<<< orphan*/  block_hashtable; int /*<<< orphan*/  all_blocks_list; } ;
struct btrfsic_dev_state {int /*<<< orphan*/  name; } ;
struct btrfsic_block_data_ctx {int /*<<< orphan*/  start; int /*<<< orphan*/  dev_bytenr; TYPE_1__* dev; } ;
struct btrfsic_block {int is_metadata; int is_iodone; int never_written; int mirror_num; int /*<<< orphan*/  all_blocks_node; int /*<<< orphan*/  dev_bytenr; int /*<<< orphan*/  logical_bytenr; struct btrfsic_dev_state* dev_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  bd_dev; } ;
struct TYPE_3__ {TYPE_2__* bdev; } ;

/* Variables and functions */
 int BTRFSIC_PRINT_MASK_VERBOSE ; 
 struct btrfsic_block* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct btrfsic_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfsic_block*,int /*<<< orphan*/ *) ; 
 struct btrfsic_block* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct btrfsic_dev_state* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfsic_state*,struct btrfsic_block*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static struct btrfsic_block *FUNC8(
		struct btrfsic_state *state,
		struct btrfsic_block_data_ctx *block_ctx,
		const char *additional_string,
		int is_metadata,
		int is_iodone,
		int never_written,
		int mirror_num,
		int *was_created)
{
	struct btrfsic_block *block;

	block = FUNC3(block_ctx->dev->bdev,
					       block_ctx->dev_bytenr,
					       &state->block_hashtable);
	if (NULL == block) {
		struct btrfsic_dev_state *dev_state;

		block = FUNC0();
		if (NULL == block) {
			FUNC7("btrfsic: error, kmalloc failed!\n");
			return NULL;
		}
		dev_state = FUNC4(block_ctx->dev->bdev->bd_dev);
		if (NULL == dev_state) {
			FUNC7("btrfsic: error, lookup dev_state failed!\n");
			FUNC1(block);
			return NULL;
		}
		block->dev_state = dev_state;
		block->dev_bytenr = block_ctx->dev_bytenr;
		block->logical_bytenr = block_ctx->start;
		block->is_metadata = is_metadata;
		block->is_iodone = is_iodone;
		block->never_written = never_written;
		block->mirror_num = mirror_num;
		if (state->print_mask & BTRFSIC_PRINT_MASK_VERBOSE)
			FUNC7("New %s%c-block @%llu (%s/%llu/%d)\n",
			       additional_string,
			       FUNC5(state, block),
			       block->logical_bytenr, dev_state->name,
			       block->dev_bytenr, mirror_num);
		FUNC6(&block->all_blocks_node, &state->all_blocks_list);
		FUNC2(block, &state->block_hashtable);
		if (NULL != was_created)
			*was_created = 1;
	} else {
		if (NULL != was_created)
			*was_created = 0;
	}

	return block;
}