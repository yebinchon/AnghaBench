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
struct extent_buffer {scalar_t__ len; int /*<<< orphan*/ * pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct extent_buffer *dst,
			     struct extent_buffer *src)
{
	int i;
	int num_pages;

	FUNC0(dst->len == src->len);

	num_pages = FUNC2(dst);
	for (i = 0; i < num_pages; i++)
		FUNC1(FUNC3(dst->pages[i]),
				FUNC3(src->pages[i]));
}