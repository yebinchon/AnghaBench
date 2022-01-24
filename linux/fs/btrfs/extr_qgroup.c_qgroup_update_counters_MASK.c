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
typedef  scalar_t__ u64 ;
struct ulist_node {int dummy; } ;
struct ulist_iterator {int dummy; } ;
struct ulist {int dummy; } ;
struct btrfs_qgroup {int /*<<< orphan*/  excl_cmpr; int /*<<< orphan*/  excl; int /*<<< orphan*/  rfer_cmpr; int /*<<< orphan*/  rfer; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ulist_iterator*) ; 
 scalar_t__ FUNC1 (struct btrfs_qgroup*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct btrfs_qgroup*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,struct btrfs_qgroup*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*,struct btrfs_qgroup*,scalar_t__,scalar_t__) ; 
 struct ulist_node* FUNC5 (struct ulist*,struct ulist_iterator*) ; 
 struct btrfs_qgroup* FUNC6 (struct ulist_node*) ; 

__attribute__((used)) static int FUNC7(struct btrfs_fs_info *fs_info,
				  struct ulist *qgroups,
				  u64 nr_old_roots,
				  u64 nr_new_roots,
				  u64 num_bytes, u64 seq)
{
	struct ulist_node *unode;
	struct ulist_iterator uiter;
	struct btrfs_qgroup *qg;
	u64 cur_new_count, cur_old_count;

	FUNC0(&uiter);
	while ((unode = FUNC5(qgroups, &uiter))) {
		bool dirty = false;

		qg = FUNC6(unode);
		cur_old_count = FUNC2(qg, seq);
		cur_new_count = FUNC1(qg, seq);

		FUNC4(fs_info, qg, cur_old_count,
					     cur_new_count);

		/* Rfer update part */
		if (cur_old_count == 0 && cur_new_count > 0) {
			qg->rfer += num_bytes;
			qg->rfer_cmpr += num_bytes;
			dirty = true;
		}
		if (cur_old_count > 0 && cur_new_count == 0) {
			qg->rfer -= num_bytes;
			qg->rfer_cmpr -= num_bytes;
			dirty = true;
		}

		/* Excl update part */
		/* Exclusive/none -> shared case */
		if (cur_old_count == nr_old_roots &&
		    cur_new_count < nr_new_roots) {
			/* Exclusive -> shared */
			if (cur_old_count != 0) {
				qg->excl -= num_bytes;
				qg->excl_cmpr -= num_bytes;
				dirty = true;
			}
		}

		/* Shared -> exclusive/none case */
		if (cur_old_count < nr_old_roots &&
		    cur_new_count == nr_new_roots) {
			/* Shared->exclusive */
			if (cur_new_count != 0) {
				qg->excl += num_bytes;
				qg->excl_cmpr += num_bytes;
				dirty = true;
			}
		}

		/* Exclusive/none -> exclusive/none case */
		if (cur_old_count == nr_old_roots &&
		    cur_new_count == nr_new_roots) {
			if (cur_old_count == 0) {
				/* None -> exclusive/none */

				if (cur_new_count != 0) {
					/* None -> exclusive */
					qg->excl += num_bytes;
					qg->excl_cmpr += num_bytes;
					dirty = true;
				}
				/* None -> none, nothing changed */
			} else {
				/* Exclusive -> exclusive/none */

				if (cur_new_count == 0) {
					/* Exclusive -> none */
					qg->excl -= num_bytes;
					qg->excl_cmpr -= num_bytes;
					dirty = true;
				}
				/* Exclusive -> exclusive, nothing changed */
			}
		}

		if (dirty)
			FUNC3(fs_info, qg);
	}
	return 0;
}