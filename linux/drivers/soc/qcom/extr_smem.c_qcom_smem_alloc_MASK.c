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
struct TYPE_4__ {unsigned int item_count; int /*<<< orphan*/  hwlock; struct smem_partition_header* global_partition; struct smem_partition_header** partitions; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  HWSPINLOCK_TIMEOUT ; 
 unsigned int SMEM_HOST_COUNT ; 
 unsigned int SMEM_ITEM_LAST_FIXED ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* __smem ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC4 (TYPE_1__*,unsigned int,size_t) ; 
 int FUNC5 (TYPE_1__*,struct smem_partition_header*,unsigned int,size_t) ; 

int FUNC6(unsigned host, unsigned item, size_t size)
{
	struct smem_partition_header *phdr;
	unsigned long flags;
	int ret;

	if (!__smem)
		return -EPROBE_DEFER;

	if (item < SMEM_ITEM_LAST_FIXED) {
		FUNC1(__smem->dev,
			"Rejecting allocation of static entry %d\n", item);
		return -EINVAL;
	}

	if (FUNC0(item >= __smem->item_count))
		return -EINVAL;

	ret = FUNC2(__smem->hwlock,
					  HWSPINLOCK_TIMEOUT,
					  &flags);
	if (ret)
		return ret;

	if (host < SMEM_HOST_COUNT && __smem->partitions[host]) {
		phdr = __smem->partitions[host];
		ret = FUNC5(__smem, phdr, item, size);
	} else if (__smem->global_partition) {
		phdr = __smem->global_partition;
		ret = FUNC5(__smem, phdr, item, size);
	} else {
		ret = FUNC4(__smem, item, size);
	}

	FUNC3(__smem->hwlock, &flags);

	return ret;
}