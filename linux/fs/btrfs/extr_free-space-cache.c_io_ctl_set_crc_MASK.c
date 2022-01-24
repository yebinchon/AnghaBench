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
struct btrfs_io_ctl {int num_pages; int /*<<< orphan*/ * pages; scalar_t__ orig; int /*<<< orphan*/  check_crcs; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_io_ctl*) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct btrfs_io_ctl *io_ctl, int index)
{
	u32 *tmp;
	u32 crc = ~(u32)0;
	unsigned offset = 0;

	if (!io_ctl->check_crcs) {
		FUNC2(io_ctl);
		return;
	}

	if (index == 0)
		offset = sizeof(u32) * io_ctl->num_pages;

	crc = FUNC0(crc, io_ctl->orig + offset, PAGE_SIZE - offset);
	FUNC1(crc, (u8 *)&crc);
	FUNC2(io_ctl);
	tmp = FUNC3(io_ctl->pages[0]);
	tmp += index;
	*tmp = crc;
}