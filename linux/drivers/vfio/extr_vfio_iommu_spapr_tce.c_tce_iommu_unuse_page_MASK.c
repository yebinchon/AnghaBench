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
struct tce_container {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 struct page* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 

__attribute__((used)) static void FUNC2(struct tce_container *container,
		unsigned long hpa)
{
	struct page *page;

	page = FUNC0(hpa >> PAGE_SHIFT);
	FUNC1(page);
}