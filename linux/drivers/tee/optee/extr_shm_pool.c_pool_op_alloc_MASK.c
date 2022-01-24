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
struct tee_shm_pool_mgr {int dummy; } ;
struct tee_shm {unsigned int size; int /*<<< orphan*/  paddr; int /*<<< orphan*/  kaddr; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 unsigned int PAGE_SIZE ; 
 int __GFP_ZERO ; 
 struct page* FUNC0 (int,unsigned int) ; 
 unsigned int FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static int FUNC4(struct tee_shm_pool_mgr *poolm,
			 struct tee_shm *shm, size_t size)
{
	unsigned int order = FUNC1(size);
	struct page *page;

	page = FUNC0(GFP_KERNEL | __GFP_ZERO, order);
	if (!page)
		return -ENOMEM;

	shm->kaddr = FUNC2(page);
	shm->paddr = FUNC3(page);
	shm->size = PAGE_SIZE << order;

	return 0;
}