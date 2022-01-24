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
struct tee_shm_pool_mgr {struct gen_pool* private_data; } ;
struct tee_shm {size_t size; int /*<<< orphan*/  paddr; void* kaddr; } ;
struct gen_pool {int min_alloc_order; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long FUNC0 (struct gen_pool*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct gen_pool*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC3 (size_t,int) ; 

__attribute__((used)) static int FUNC4(struct tee_shm_pool_mgr *poolm,
			     struct tee_shm *shm, size_t size)
{
	unsigned long va;
	struct gen_pool *genpool = poolm->private_data;
	size_t s = FUNC3(size, 1 << genpool->min_alloc_order);

	va = FUNC0(genpool, s);
	if (!va)
		return -ENOMEM;

	FUNC2((void *)va, 0, s);
	shm->kaddr = (void *)va;
	shm->paddr = FUNC1(genpool, va);
	shm->size = s;
	return 0;
}