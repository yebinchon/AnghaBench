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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct btrfs_io_ctl {int num_pages; int /*<<< orphan*/  fs_info; scalar_t__ orig; int /*<<< orphan*/ * pages; int /*<<< orphan*/  check_crcs; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_io_ctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_io_ctl*) ; 
 scalar_t__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct btrfs_io_ctl *io_ctl, int index)
{
	u32 *tmp, val;
	u32 crc = ~(u32)0;
	unsigned offset = 0;

	if (!io_ctl->check_crcs) {
		FUNC3(io_ctl, 0);
		return 0;
	}

	if (index == 0)
		offset = sizeof(u32) * io_ctl->num_pages;

	tmp = FUNC5(io_ctl->pages[0]);
	tmp += index;
	val = *tmp;

	FUNC3(io_ctl, 0);
	crc = FUNC0(crc, io_ctl->orig + offset, PAGE_SIZE - offset);
	FUNC1(crc, (u8 *)&crc);
	if (val != crc) {
		FUNC2(io_ctl->fs_info,
			"csum mismatch on free space cache");
		FUNC4(io_ctl);
		return -EIO;
	}

	return 0;
}