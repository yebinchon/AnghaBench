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
struct log_entry {int /*<<< orphan*/  new_map; int /*<<< orphan*/  lba; int /*<<< orphan*/  old_map; int /*<<< orphan*/  seq; } ;
struct free_entry {int dummy; } ;
struct arena_info {size_t nfree; TYPE_1__* freelist; } ;
struct TYPE_2__ {int sub; size_t block; int has_err; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LOG_NEW_ENT ; 
 int FUNC0 (struct arena_info*,size_t) ; 
 int FUNC1 (struct arena_info*,size_t,struct log_entry*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct arena_info*,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct arena_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct arena_info*) ; 

__attribute__((used)) static int FUNC12(struct arena_info *arena)
{
	int new, ret;
	struct log_entry log_new;
	u32 i, map_entry, log_oldmap, log_newmap;

	arena->freelist = FUNC8(arena->nfree, sizeof(struct free_entry),
					GFP_KERNEL);
	if (!arena->freelist)
		return -ENOMEM;

	for (i = 0; i < arena->nfree; i++) {
		new = FUNC1(arena, i, &log_new, LOG_NEW_ENT);
		if (new < 0)
			return new;

		/* old and new map entries with any flags stripped out */
		log_oldmap = FUNC6(FUNC9(log_new.old_map));
		log_newmap = FUNC6(FUNC9(log_new.new_map));

		/* sub points to the next one to be overwritten */
		arena->freelist[i].sub = 1 - new;
		arena->freelist[i].seq = FUNC10(FUNC9(log_new.seq));
		arena->freelist[i].block = log_oldmap;

		/*
		 * FIXME: if error clearing fails during init, we want to make
		 * the BTT read-only
		 */
		if (FUNC5(FUNC9(log_new.old_map)) &&
		    !FUNC7(FUNC9(log_new.old_map))) {
			arena->freelist[i].has_err = 1;
			ret = FUNC0(arena, i);
			if (ret)
				FUNC4(FUNC11(arena),
					"Unable to clear known errors\n");
		}

		/* This implies a newly created or untouched flog entry */
		if (log_oldmap == log_newmap)
			continue;

		/* Check if map recovery is needed */
		ret = FUNC2(arena, FUNC9(log_new.lba), &map_entry,
				NULL, NULL, 0);
		if (ret)
			return ret;

		/*
		 * The map_entry from btt_read_map is stripped of any flag bits,
		 * so use the stripped out versions from the log as well for
		 * testing whether recovery is needed. For restoration, use the
		 * 'raw' version of the log entries as that captured what we
		 * were going to write originally.
		 */
		if ((log_newmap != map_entry) && (log_oldmap == map_entry)) {
			/*
			 * Last transaction wrote the flog, but wasn't able
			 * to complete the map write. So fix up the map.
			 */
			ret = FUNC3(arena, FUNC9(log_new.lba),
					FUNC9(log_new.new_map), 0, 0, 0);
			if (ret)
				return ret;
		}
	}

	return 0;
}