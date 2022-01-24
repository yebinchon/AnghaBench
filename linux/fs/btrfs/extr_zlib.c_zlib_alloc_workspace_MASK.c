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
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  workspace; } ;
struct workspace {unsigned int level; struct list_head list; int /*<<< orphan*/  buf; TYPE_1__ strm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct list_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  MAX_MEM_LEVEL ; 
 int /*<<< orphan*/  MAX_WBITS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct workspace* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static struct list_head *FUNC9(unsigned int level)
{
	struct workspace *workspace;
	int workspacesize;

	workspace = FUNC4(sizeof(*workspace), GFP_KERNEL);
	if (!workspace)
		return FUNC0(-ENOMEM);

	workspacesize = FUNC5(FUNC6(MAX_WBITS, MAX_MEM_LEVEL),
			FUNC8());
	workspace->strm.workspace = FUNC3(workspacesize, GFP_KERNEL);
	workspace->level = level;
	workspace->buf = FUNC2(PAGE_SIZE, GFP_KERNEL);
	if (!workspace->strm.workspace || !workspace->buf)
		goto fail;

	FUNC1(&workspace->list);

	return &workspace->list;
fail:
	FUNC7(&workspace->list);
	return FUNC0(-ENOMEM);
}