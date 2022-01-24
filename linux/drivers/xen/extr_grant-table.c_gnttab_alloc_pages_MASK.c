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

/* Variables and functions */
 int FUNC0 (int,struct page**) ; 
 int /*<<< orphan*/  FUNC1 (int,struct page**) ; 
 int FUNC2 (int,struct page**) ; 

int FUNC3(int nr_pages, struct page **pages)
{
	int ret;

	ret = FUNC0(nr_pages, pages);
	if (ret < 0)
		return ret;

	ret = FUNC2(nr_pages, pages);
	if (ret < 0)
		FUNC1(nr_pages, pages);

	return ret;
}