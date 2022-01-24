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
struct z_erofs_pagevec_ctor {int nr; scalar_t__ index; struct page* curr; int /*<<< orphan*/  pages; int /*<<< orphan*/ * next; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct z_erofs_pagevec_ctor*,int) ; 
 struct page* FUNC3 (struct z_erofs_pagevec_ctor*,int) ; 

__attribute__((used)) static inline void
FUNC4(struct z_erofs_pagevec_ctor *ctor,
			      bool atomic)
{
	struct page *next = FUNC3(ctor, ctor->nr);

	FUNC2(ctor, atomic);

	ctor->curr = next;
	ctor->next = NULL;
	ctor->pages = atomic ?
		FUNC1(ctor->curr) : FUNC0(ctor->curr);

	ctor->nr = PAGE_SIZE / sizeof(struct page *);
	ctor->index = 0;
}