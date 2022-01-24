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
struct page {int dummy; } ;
struct extent_buffer {struct page** pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct extent_buffer*) ; 

__attribute__((used)) static void FUNC3(struct extent_buffer *eb,
		struct page *accessed)
{
	int num_pages, i;

	FUNC0(eb);

	num_pages = FUNC2(eb);
	for (i = 0; i < num_pages; i++) {
		struct page *p = eb->pages[i];

		if (p != accessed)
			FUNC1(p);
	}
}