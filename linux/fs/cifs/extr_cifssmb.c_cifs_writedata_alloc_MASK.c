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
typedef  int /*<<< orphan*/  work_func_t ;
struct page {int dummy; } ;
struct cifs_writedata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 struct cifs_writedata* FUNC0 (struct page**,int /*<<< orphan*/ ) ; 
 struct page** FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 

struct cifs_writedata *
FUNC2(unsigned int nr_pages, work_func_t complete)
{
	struct page **pages =
		FUNC1(nr_pages, sizeof(struct page *), GFP_NOFS);
	if (pages)
		return FUNC0(pages, complete);

	return NULL;
}