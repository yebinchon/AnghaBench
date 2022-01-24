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
typedef  int /*<<< orphan*/  u64 ;
struct reada_extent {int /*<<< orphan*/  lock; int /*<<< orphan*/  extctl; } ;
struct reada_extctl {int /*<<< orphan*/  list; int /*<<< orphan*/  generation; struct reada_control* rc; } ;
struct reada_control {int /*<<< orphan*/  elems; struct btrfs_fs_info* fs_info; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct reada_extctl* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,struct reada_extent*) ; 
 struct reada_extent* FUNC4 (struct btrfs_fs_info*,int /*<<< orphan*/ ,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct reada_control *rc, u64 logical,
			   struct btrfs_key *top, u64 generation)
{
	struct btrfs_fs_info *fs_info = rc->fs_info;
	struct reada_extent *re;
	struct reada_extctl *rec;

	/* takes one ref */
	re = FUNC4(fs_info, logical, top);
	if (!re)
		return -1;

	rec = FUNC1(sizeof(*rec), GFP_KERNEL);
	if (!rec) {
		FUNC3(fs_info, re);
		return -ENOMEM;
	}

	rec->rc = rc;
	rec->generation = generation;
	FUNC0(&rc->elems);

	FUNC5(&re->lock);
	FUNC2(&rec->list, &re->extctl);
	FUNC6(&re->lock);

	/* leave the ref on the extent */

	return 0;
}