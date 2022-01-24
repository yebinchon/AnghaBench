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
struct aidaw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  aidaw_pool ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aidaw* FUNC1 (struct page*) ; 

__attribute__((used)) static inline struct aidaw *FUNC2(void)
{
	struct page *page = FUNC0(aidaw_pool, GFP_ATOMIC);

	return page ? FUNC1(page) : NULL;
}