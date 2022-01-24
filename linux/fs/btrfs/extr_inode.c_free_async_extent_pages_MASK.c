#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct async_extent {int nr_pages; TYPE_1__** pages; } ;
struct TYPE_3__ {int /*<<< orphan*/  mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct async_extent *async_extent)
{
	int i;

	if (!async_extent->pages)
		return;

	for (i = 0; i < async_extent->nr_pages; i++) {
		FUNC0(async_extent->pages[i]->mapping);
		FUNC2(async_extent->pages[i]);
	}
	FUNC1(async_extent->pages);
	async_extent->nr_pages = 0;
	async_extent->pages = NULL;
}