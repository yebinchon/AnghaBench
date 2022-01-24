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
struct t10_alua_lba_map {int dummy; } ;
struct se_device {int dummy; } ;
struct list_head {int dummy; } ;
struct config_item {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int ALUA_ACCESS_STATE_ACTIVE_NON_OPTIMIZED ; 
 int ALUA_ACCESS_STATE_ACTIVE_OPTIMIZED ; 
 int ALUA_ACCESS_STATE_STANDBY ; 
 int ALUA_ACCESS_STATE_UNAVAILABLE ; 
 int EINVAL ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 scalar_t__ FUNC1 (struct t10_alua_lba_map*) ; 
 int FUNC2 (struct t10_alua_lba_map*) ; 
 struct t10_alua_lba_map* FUNC3 (struct list_head*,unsigned long,unsigned long) ; 
 int FUNC4 (struct t10_alua_lba_map*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct se_device*,struct list_head*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int FUNC10 (char*,char*,...) ; 
 char* FUNC11 (char*,char) ; 
 char* FUNC12 (char**,char*) ; 
 struct se_device* FUNC13 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC14(struct config_item *item,
		const char *page, size_t count)
{
	struct se_device *dev = FUNC13(item);
	struct t10_alua_lba_map *lba_map = NULL;
	struct list_head lba_list;
	char *map_entries, *orig, *ptr;
	char state;
	int pg_num = -1, pg;
	int ret = 0, num = 0, pg_id, alua_state;
	unsigned long start_lba = -1, end_lba = -1;
	unsigned long segment_size = -1, segment_mult = -1;

	orig = map_entries = FUNC8(page, GFP_KERNEL);
	if (!map_entries)
		return -ENOMEM;

	FUNC0(&lba_list);
	while ((ptr = FUNC12(&map_entries, "\n")) != NULL) {
		if (!*ptr)
			continue;

		if (num == 0) {
			if (FUNC10(ptr, "%lu %lu\n",
				   &segment_size, &segment_mult) != 2) {
				FUNC9("Invalid line %d\n", num);
				ret = -EINVAL;
				break;
			}
			num++;
			continue;
		}
		if (FUNC10(ptr, "%lu %lu", &start_lba, &end_lba) != 2) {
			FUNC9("Invalid line %d\n", num);
			ret = -EINVAL;
			break;
		}
		ptr = FUNC11(ptr, ' ');
		if (!ptr) {
			FUNC9("Invalid line %d, missing end lba\n", num);
			ret = -EINVAL;
			break;
		}
		ptr++;
		ptr = FUNC11(ptr, ' ');
		if (!ptr) {
			FUNC9("Invalid line %d, missing state definitions\n",
			       num);
			ret = -EINVAL;
			break;
		}
		ptr++;
		lba_map = FUNC3(&lba_list,
						     start_lba, end_lba);
		if (FUNC1(lba_map)) {
			ret = FUNC2(lba_map);
			break;
		}
		pg = 0;
		while (FUNC10(ptr, "%d:%c", &pg_id, &state) == 2) {
			switch (state) {
			case 'O':
				alua_state = ALUA_ACCESS_STATE_ACTIVE_OPTIMIZED;
				break;
			case 'A':
				alua_state = ALUA_ACCESS_STATE_ACTIVE_NON_OPTIMIZED;
				break;
			case 'S':
				alua_state = ALUA_ACCESS_STATE_STANDBY;
				break;
			case 'U':
				alua_state = ALUA_ACCESS_STATE_UNAVAILABLE;
				break;
			default:
				FUNC9("Invalid ALUA state '%c'\n", state);
				ret = -EINVAL;
				goto out;
			}

			ret = FUNC4(lba_map,
							     pg_id, alua_state);
			if (ret) {
				FUNC9("Invalid target descriptor %d:%c "
				       "at line %d\n",
				       pg_id, state, num);
				break;
			}
			pg++;
			ptr = FUNC11(ptr, ' ');
			if (ptr)
				ptr++;
			else
				break;
		}
		if (pg_num == -1)
		    pg_num = pg;
		else if (pg != pg_num) {
			FUNC9("Only %d from %d port groups definitions "
			       "at line %d\n", pg, pg_num, num);
			ret = -EINVAL;
			break;
		}
		num++;
	}
out:
	if (ret) {
		FUNC5(&lba_list);
		count = ret;
	} else
		FUNC6(dev, &lba_list,
				      segment_size, segment_mult);
	FUNC7(orig);
	return count;
}