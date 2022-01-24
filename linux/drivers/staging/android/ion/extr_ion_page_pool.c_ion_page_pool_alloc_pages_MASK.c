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
struct ion_page_pool {int /*<<< orphan*/  order; int /*<<< orphan*/  gfp_mask; } ;

/* Variables and functions */
 struct page* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct page *FUNC2(struct ion_page_pool *pool)
{
	if (FUNC1(current))
		return NULL;
	return FUNC0(pool->gfp_mask, pool->order);
}