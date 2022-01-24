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
typedef  void* u64 ;
struct t10_alua_lba_map {int /*<<< orphan*/  lba_map_list; void* lba_map_last_lba; void* lba_map_first_lba; int /*<<< orphan*/  lba_map_mem_list; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct t10_alua_lba_map* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct t10_alua_lba_map* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  t10_alua_lba_map_cache ; 

struct t10_alua_lba_map *
FUNC5(struct list_head *list,
			   u64 first_lba, u64 last_lba)
{
	struct t10_alua_lba_map *lba_map;

	lba_map = FUNC2(t10_alua_lba_map_cache, GFP_KERNEL);
	if (!lba_map) {
		FUNC4("Unable to allocate struct t10_alua_lba_map\n");
		return FUNC0(-ENOMEM);
	}
	FUNC1(&lba_map->lba_map_mem_list);
	lba_map->lba_map_first_lba = first_lba;
	lba_map->lba_map_last_lba = last_lba;

	FUNC3(&lba_map->lba_map_list, list);
	return lba_map;
}