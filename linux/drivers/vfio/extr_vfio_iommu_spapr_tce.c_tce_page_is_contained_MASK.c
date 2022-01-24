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
struct mm_struct {int dummy; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct mm_struct*,unsigned long,unsigned int,unsigned long*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (unsigned long) ; 

__attribute__((used)) static bool FUNC4(struct mm_struct *mm, unsigned long hpa,
		unsigned int it_page_shift)
{
	struct page *page;
	unsigned long size = 0;

	if (FUNC1(mm, hpa, it_page_shift, &size))
		return size == (1UL << it_page_shift);

	page = FUNC3(hpa >> PAGE_SHIFT);
	/*
	 * Check that the TCE table granularity is not bigger than the size of
	 * a page we just found. Otherwise the hardware can get access to
	 * a bigger memory chunk that it should.
	 */
	return FUNC2(FUNC0(page)) >= it_page_shift;
}