#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct smem_partition_header {int dummy; } ;
struct TYPE_4__ {unsigned int item_count; size_t* cacheline; size_t global_cacheline; int /*<<< orphan*/  hwlock; struct smem_partition_header* global_partition; struct smem_partition_header** partitions; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  HWSPINLOCK_TIMEOUT ; 
 unsigned int SMEM_HOST_COUNT ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__* __smem ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 
 void* FUNC4 (TYPE_1__*,unsigned int,size_t*) ; 
 void* FUNC5 (TYPE_1__*,struct smem_partition_header*,size_t,unsigned int,size_t*) ; 

void *FUNC6(unsigned host, unsigned item, size_t *size)
{
	struct smem_partition_header *phdr;
	unsigned long flags;
	size_t cacheln;
	int ret;
	void *ptr = FUNC0(-EPROBE_DEFER);

	if (!__smem)
		return ptr;

	if (FUNC1(item >= __smem->item_count))
		return FUNC0(-EINVAL);

	ret = FUNC2(__smem->hwlock,
					  HWSPINLOCK_TIMEOUT,
					  &flags);
	if (ret)
		return FUNC0(ret);

	if (host < SMEM_HOST_COUNT && __smem->partitions[host]) {
		phdr = __smem->partitions[host];
		cacheln = __smem->cacheline[host];
		ptr = FUNC5(__smem, phdr, cacheln, item, size);
	} else if (__smem->global_partition) {
		phdr = __smem->global_partition;
		cacheln = __smem->global_cacheline;
		ptr = FUNC5(__smem, phdr, cacheln, item, size);
	} else {
		ptr = FUNC4(__smem, item, size);
	}

	FUNC3(__smem->hwlock, &flags);

	return ptr;

}