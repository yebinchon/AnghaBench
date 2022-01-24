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
struct page {int /*<<< orphan*/  mapping; } ;
struct file {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  erofs_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int FUNC2 (struct bio*) ; 
 struct bio* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int) ; 

__attribute__((used)) static int FUNC5(struct file *file, struct page *page)
{
	erofs_off_t last_block;
	struct bio *bio;

	FUNC4(page, true);

	bio = FUNC3(NULL, page->mapping,
				  page, &last_block, 1, false);

	if (FUNC1(bio))
		return FUNC2(bio);

	FUNC0(bio);	/* since we have only one bio -- must be NULL */
	return 0;
}