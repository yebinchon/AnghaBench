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
typedef  size_t u32 ;
struct log_entry {int /*<<< orphan*/  old_map; } ;
struct arena_info {TYPE_1__* freelist; } ;
struct TYPE_2__ {int seq; int has_err; int /*<<< orphan*/  block; scalar_t__ sub; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVDIMM_IO_ATOMIC ; 
 int FUNC0 (struct arena_info*,size_t,size_t,struct log_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct arena_info *arena, u32 lane, u32 sub,
			struct log_entry *ent)
{
	int ret;

	ret = FUNC0(arena, lane, sub, ent, NVDIMM_IO_ATOMIC);
	if (ret)
		return ret;

	/* prepare the next free entry */
	arena->freelist[lane].sub = 1 - arena->freelist[lane].sub;
	if (++(arena->freelist[lane].seq) == 4)
		arena->freelist[lane].seq = 1;
	if (FUNC1(FUNC3(ent->old_map)))
		arena->freelist[lane].has_err = 1;
	arena->freelist[lane].block = FUNC2(FUNC3(ent->old_map));

	return ret;
}