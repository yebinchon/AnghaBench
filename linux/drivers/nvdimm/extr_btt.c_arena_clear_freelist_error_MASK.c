#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u64 ;
typedef  size_t u32 ;
struct arena_info {unsigned long sector_size; int /*<<< orphan*/  err_lock; TYPE_1__* freelist; } ;
struct TYPE_2__ {size_t block; scalar_t__ has_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct arena_info*,unsigned long,void*,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (struct arena_info*,size_t) ; 

__attribute__((used)) static int FUNC7(struct arena_info *arena, u32 lane)
{
	int ret = 0;

	if (arena->freelist[lane].has_err) {
		void *zero_page = FUNC5(FUNC0(0));
		u32 lba = arena->freelist[lane].block;
		u64 nsoff = FUNC6(arena, lba);
		unsigned long len = arena->sector_size;

		FUNC3(&arena->err_lock);

		while (len) {
			unsigned long chunk = FUNC2(len, PAGE_SIZE);

			ret = FUNC1(arena, nsoff, zero_page,
				chunk, 0);
			if (ret)
				break;
			len -= chunk;
			nsoff += chunk;
			if (len == 0)
				arena->freelist[lane].has_err = 0;
		}
		FUNC4(&arena->err_lock);
	}
	return ret;
}