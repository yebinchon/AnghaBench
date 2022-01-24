#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u64 ;
struct virtqueue {int dummy; } ;
struct airq_info {int /*<<< orphan*/  lock; TYPE_1__* aiv; } ;
struct TYPE_3__ {scalar_t__ vector; } ;

/* Variables and functions */
 int MAX_AIRQ_AREAS ; 
 struct airq_info** airq_areas ; 
 int /*<<< orphan*/  airq_areas_lock ; 
 unsigned long FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct airq_info* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC7(struct virtqueue *vqs[], int nvqs,
					u64 *first, void **airq_info)
{
	int i, j;
	struct airq_info *info;
	unsigned long indicator_addr = 0;
	unsigned long bit, flags;

	for (i = 0; i < MAX_AIRQ_AREAS && !indicator_addr; i++) {
		FUNC2(&airq_areas_lock);
		if (!airq_areas[i])
			airq_areas[i] = FUNC4(i);
		info = airq_areas[i];
		FUNC3(&airq_areas_lock);
		if (!info)
			return 0;
		FUNC5(&info->lock, flags);
		bit = FUNC0(info->aiv, nvqs);
		if (bit == -1UL) {
			/* Not enough vacancies. */
			FUNC6(&info->lock, flags);
			continue;
		}
		*first = bit;
		*airq_info = info;
		indicator_addr = (unsigned long)info->aiv->vector;
		for (j = 0; j < nvqs; j++) {
			FUNC1(info->aiv, bit + j,
					(unsigned long)vqs[j]);
		}
		FUNC6(&info->lock, flags);
	}
	return indicator_addr;
}