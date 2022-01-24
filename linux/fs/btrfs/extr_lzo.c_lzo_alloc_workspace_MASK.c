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
struct workspace {struct list_head list; void* cbuf; void* buf; void* mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct list_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  LZO1X_MEM_COMPRESS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct workspace* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct list_head*) ; 

__attribute__((used)) static struct list_head *FUNC6(unsigned int level)
{
	struct workspace *workspace;

	workspace = FUNC3(sizeof(*workspace), GFP_KERNEL);
	if (!workspace)
		return FUNC0(-ENOMEM);

	workspace->mem = FUNC2(LZO1X_MEM_COMPRESS, GFP_KERNEL);
	workspace->buf = FUNC2(FUNC4(PAGE_SIZE), GFP_KERNEL);
	workspace->cbuf = FUNC2(FUNC4(PAGE_SIZE), GFP_KERNEL);
	if (!workspace->mem || !workspace->buf || !workspace->cbuf)
		goto fail;

	FUNC1(&workspace->list);

	return &workspace->list;
fail:
	FUNC5(&workspace->list);
	return FUNC0(-ENOMEM);
}