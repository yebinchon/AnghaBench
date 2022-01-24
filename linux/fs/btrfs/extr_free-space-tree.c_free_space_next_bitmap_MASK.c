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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__* slots; int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {scalar_t__ offset; scalar_t__ type; int /*<<< orphan*/  objectid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct btrfs_key*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_path*) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct btrfs_trans_handle *trans,
				  struct btrfs_root *root, struct btrfs_path *p)
{
	struct btrfs_key key;

	if (p->slots[0] + 1 < FUNC0(p->nodes[0])) {
		p->slots[0]++;
		return 0;
	}

	FUNC1(p->nodes[0], &key, p->slots[0]);
	FUNC2(p);

	key.objectid += key.offset;
	key.type = (u8)-1;
	key.offset = (u64)-1;

	return FUNC3(trans, root, &key, p, 0, 1);
}