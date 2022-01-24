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
struct scrub_page {int /*<<< orphan*/ * page; scalar_t__ io_error; } ;
struct scrub_block {int /*<<< orphan*/  sctx; struct scrub_page** pagev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct scrub_page*) ; 

__attribute__((used)) static int FUNC6(struct scrub_block *sblock,
					   int page_num)
{
	struct scrub_page *spage = sblock->pagev[page_num];

	FUNC0(spage->page == NULL);
	if (spage->io_error) {
		void *mapped_buffer = FUNC3(spage->page);

		FUNC1(mapped_buffer);
		FUNC2(spage->page);
		FUNC4(mapped_buffer);
	}
	return FUNC5(sblock->sctx, spage);
}