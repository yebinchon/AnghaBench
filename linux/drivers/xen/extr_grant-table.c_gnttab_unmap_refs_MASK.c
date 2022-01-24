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
struct gnttab_unmap_grant_ref {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  GNTTABOP_unmap_grant_ref ; 
 int FUNC1 (int /*<<< orphan*/ ,struct gnttab_unmap_grant_ref*,unsigned int) ; 
 int FUNC2 (struct gnttab_unmap_grant_ref*,struct gnttab_unmap_grant_ref*,struct page**,unsigned int) ; 

int FUNC3(struct gnttab_unmap_grant_ref *unmap_ops,
		      struct gnttab_unmap_grant_ref *kunmap_ops,
		      struct page **pages, unsigned int count)
{
	unsigned int i;
	int ret;

	ret = FUNC1(GNTTABOP_unmap_grant_ref, unmap_ops, count);
	if (ret)
		return ret;

	for (i = 0; i < count; i++)
		FUNC0(pages[i]);

	return FUNC2(unmap_ops, kunmap_ops, pages, count);
}