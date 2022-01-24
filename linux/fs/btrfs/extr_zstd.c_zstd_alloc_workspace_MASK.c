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
struct list_head {int dummy; } ;
struct workspace {unsigned int level; unsigned int req_level; struct list_head list; struct list_head lru_list; int /*<<< orphan*/  buf; int /*<<< orphan*/  mem; int /*<<< orphan*/  size; int /*<<< orphan*/  last_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct list_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct workspace* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct list_head*) ; 
 int /*<<< orphan*/ * zstd_ws_mem_sizes ; 

__attribute__((used)) static struct list_head *FUNC6(unsigned int level)
{
	struct workspace *workspace;

	workspace = FUNC4(sizeof(*workspace), GFP_KERNEL);
	if (!workspace)
		return FUNC0(-ENOMEM);

	workspace->size = zstd_ws_mem_sizes[level - 1];
	workspace->level = level;
	workspace->req_level = level;
	workspace->last_used = jiffies;
	workspace->mem = FUNC3(workspace->size, GFP_KERNEL);
	workspace->buf = FUNC2(PAGE_SIZE, GFP_KERNEL);
	if (!workspace->mem || !workspace->buf)
		goto fail;

	FUNC1(&workspace->list);
	FUNC1(&workspace->lru_list);

	return &workspace->list;
fail:
	FUNC5(&workspace->list);
	return FUNC0(-ENOMEM);
}