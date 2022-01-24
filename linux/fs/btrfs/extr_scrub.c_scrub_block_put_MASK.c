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
struct scrub_block {int page_count; int /*<<< orphan*/ * pagev; scalar_t__ sparity; int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scrub_block*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct scrub_block *sblock)
{
	if (FUNC1(&sblock->refs)) {
		int i;

		if (sblock->sparity)
			FUNC3(sblock->sparity);

		for (i = 0; i < sblock->page_count; i++)
			FUNC2(sblock->pagev[i]);
		FUNC0(sblock);
	}
}