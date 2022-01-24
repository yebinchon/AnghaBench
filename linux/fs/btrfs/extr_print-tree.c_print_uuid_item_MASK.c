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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  subvol_id ;
struct extent_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,int /*<<< orphan*/ *,unsigned long,int) ; 

__attribute__((used)) static void FUNC5(struct extent_buffer *l, unsigned long offset,
			    u32 item_size)
{
	if (!FUNC0(item_size, sizeof(u64))) {
		FUNC3("BTRFS: uuid item with illegal size %lu!\n",
			(unsigned long)item_size);
		return;
	}
	while (item_size) {
		__le64 subvol_id;

		FUNC4(l, &subvol_id, offset, sizeof(subvol_id));
		FUNC2("\t\tsubvol_id %llu\n",
		       (unsigned long long)FUNC1(subvol_id));
		item_size -= sizeof(u64);
		offset += sizeof(u64);
	}
}