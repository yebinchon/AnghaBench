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
struct muram_block {unsigned long start; unsigned long size; int /*<<< orphan*/  head; } ;
typedef  int /*<<< orphan*/  genpool_algo_t ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 unsigned long GENPOOL_OFFSET ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 () ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 struct muram_block* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  muram_block_list ; 
 int /*<<< orphan*/  muram_pool ; 

__attribute__((used)) static unsigned long FUNC7(unsigned long size,
		genpool_algo_t algo, void *data)
{
	struct muram_block *entry;
	unsigned long start;

	if (!muram_pool && FUNC1())
		goto out2;

	start = FUNC2(muram_pool, size, algo, data);
	if (!start)
		goto out2;
	start = start - GENPOOL_OFFSET;
	FUNC6(FUNC0(start), 0, size);
	entry = FUNC4(sizeof(*entry), GFP_ATOMIC);
	if (!entry)
		goto out1;
	entry->start = start;
	entry->size = size;
	FUNC5(&entry->head, &muram_block_list);

	return start;
out1:
	FUNC3(muram_pool, start, size);
out2:
	return (unsigned long)-ENOMEM;
}