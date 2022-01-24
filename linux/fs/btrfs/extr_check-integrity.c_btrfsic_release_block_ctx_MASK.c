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
typedef  unsigned int u64 ;
struct btrfsic_block_data_ctx {unsigned int len; int /*<<< orphan*/ ** datav; int /*<<< orphan*/ ** pagev; int /*<<< orphan*/ * mem_to_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct btrfsic_block_data_ctx *block_ctx)
{
	if (block_ctx->mem_to_free) {
		unsigned int num_pages;

		FUNC0(!block_ctx->datav);
		FUNC0(!block_ctx->pagev);
		num_pages = (block_ctx->len + (u64)PAGE_SIZE - 1) >>
			    PAGE_SHIFT;
		while (num_pages > 0) {
			num_pages--;
			if (block_ctx->datav[num_pages]) {
				FUNC3(block_ctx->pagev[num_pages]);
				block_ctx->datav[num_pages] = NULL;
			}
			if (block_ctx->pagev[num_pages]) {
				FUNC1(block_ctx->pagev[num_pages]);
				block_ctx->pagev[num_pages] = NULL;
			}
		}

		FUNC2(block_ctx->mem_to_free);
		block_ctx->mem_to_free = NULL;
		block_ctx->pagev = NULL;
		block_ctx->datav = NULL;
	}
}